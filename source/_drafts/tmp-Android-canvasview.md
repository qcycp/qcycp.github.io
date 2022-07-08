---
title: tmp_Android_canvasview
abbrlink: 28ba3cad
tags:
---
CanvasView
===

https://gist.github.com/ErikHellman/6069322
http://www.vogella.com/tutorials/AndroidTouch/article.html

```java
package com.tpv.whiteboard.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

import com.tpv.whiteboard.WhiteBoardApplication;
import com.tpv.whiteboard.common.PathPaint;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class CanvasView extends View {
    private final static String TAG = CanvasView.class.getName();

    private float mSignatureWidth;
    private int mSignatureColor;
    private int mSignatureAlpha = 0xFF;

    private int mWidth = 1920;
    private int mHeight = 1080;

    private boolean mStopDrawing = true;
    private boolean mEraserMode = false;
    private boolean mEraserModePausing = true;

    private Paint mEraserPaint = null;
    private Paint mCurrentPaint;

    private Bitmap mBitmap = null;
    private Paint  mBitmapPaint;
    private Canvas mCanvas;

    private int mPathCounter = -1;
    private int mTopCounter = -1;
    private List> mHistory = new ArrayList>();
    private List mEachPageCurrentCounter = new ArrayList();
    private int mCurrentPage = 0;
    private int mTotalPage = 1;

    public static final int MAX_FINGERS = 10;
    private Path[] mFingerPaths = new Path[MAX_FINGERS];
    private float[] mX = new float[MAX_FINGERS];
    private float[] mY = new float[MAX_FINGERS];
    private boolean[] mPesudoMovePaint = new boolean[MAX_FINGERS];
    //private ArrayList mCompletedPaths;
    private RectF mPathBounds = new RectF();

    public CanvasView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

        if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_MARKER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getMarkerSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getMarkerPaintColor();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HIGHLIGHTER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHighlighterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHighlighterPaintColor();
            mSignatureAlpha = WhiteBoardApplication.ALPHA_VALUE;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getEraserSize();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HANDWRITER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHandwriterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHandwriterPaintColor();
            mSignatureAlpha = 0xFF;
        }

        init();
    }

    public CanvasView(Context context, int width, int height) {
        super(context);

        mWidth = width;
        mHeight = height;

        if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_MARKER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getMarkerSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getMarkerPaintColor();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HIGHLIGHTER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHighlighterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHighlighterPaintColor();
            mSignatureAlpha = WhiteBoardApplication.ALPHA_VALUE;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getEraserSize();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HANDWRITER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHandwriterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHandwriterPaintColor();
            mSignatureAlpha = 0xFF;
        }

        init();
    }

    public CanvasView(Context context, AttributeSet attrs) {
        super(context, attrs);

        if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_MARKER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getMarkerSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getMarkerPaintColor();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HIGHLIGHTER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHighlighterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHighlighterPaintColor();

            mSignatureAlpha = WhiteBoardApplication.ALPHA_VALUE;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getEraserSize();
            mSignatureAlpha = 0xFF;
        } else if (WhiteBoardApplication.getInstance().getAnnotationMode() == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HANDWRITER) {
            mSignatureWidth = WhiteBoardApplication.getInstance().getHandwriterSize();
            mSignatureColor = WhiteBoardApplication.getInstance().getHandwriterPaintColor();
            mSignatureAlpha = 0xFF;
        }

        init();
    }

    private void init() {
        mHistory.add(new Stack());
        mEachPageCurrentCounter.add(-1);
        mPathCounter = mTopCounter = -1;
        //mCompletedPaths = new ArrayList();

        for (int count = 0; count < 10; count++) {
            mX[count] = 0;
            mY[count] = 0;
        }

        if (mBitmap != null) {
            mBitmap.recycle();
            mBitmap = null;
        }
        mBitmap = Bitmap.createBitmap(mWidth, mHeight, Bitmap.Config.ARGB_8888);
        mCanvas = new Canvas(mBitmap);
        mBitmapPaint = new Paint(Paint.DITHER_FLAG);

        if (android.os.Build.VERSION.SDK_INT >= 11) {
            setLayerType(View.LAYER_TYPE_SOFTWARE, null);// for eraser mode
        }
        setWillNotDraw(false);

        if (WhiteBoardApplication.getInstance().getAnnotationMode() != WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mCurrentPaint = new Paint();
            mCurrentPaint.setAntiAlias(true);
            mCurrentPaint.setColor(mSignatureColor);
            mCurrentPaint.setAlpha(mSignatureAlpha);
            mCurrentPaint.setStyle(Paint.Style.STROKE);
            mCurrentPaint.setStrokeJoin(Paint.Join.ROUND);
            mCurrentPaint.setStrokeCap(Paint.Cap.ROUND);
            mCurrentPaint.setStrokeWidth(mSignatureWidth);
            mCurrentPaint.setDither(true);
        } else {
            mEraserMode = true;
            mEraserModePausing = true;

            mCurrentPaint = new Paint();
            mCurrentPaint.setAntiAlias(true);
            mCurrentPaint.setStyle(Paint.Style.STROKE);
            mCurrentPaint.setStrokeJoin(Paint.Join.ROUND);
            mCurrentPaint.setStrokeCap(Paint.Cap.ROUND);
            mCurrentPaint.setStrokeWidth(mSignatureWidth);
            mCurrentPaint.setDither(true);
            mCurrentPaint.setMaskFilter(null);
            mCurrentPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));

            mEraserPaint = new Paint();
            mEraserPaint.setAntiAlias(true);
            mEraserPaint.setColor(Color.GRAY);
            mEraserPaint.setStyle(Paint.Style.STROKE);
            mEraserPaint.setStrokeJoin(Paint.Join.ROUND);
            mEraserPaint.setStrokeCap(Paint.Cap.ROUND);
            mEraserPaint.setStrokeWidth(mSignatureWidth);
            mEraserPaint.setDither(true);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        canvas.drawBitmap(mBitmap, 0, 0, mBitmapPaint);
        for (Path fingerPath : mFingerPaths) {
            if (fingerPath != null) {
                canvas.drawPath(fingerPath, mCurrentPaint);
            }
        }

        if (!mEraserModePausing) {
            for (int count = 0; count < 10; count++) {
                if (mX[count] != 0 && mY[count] != 0) {
                    canvas.drawCircle(mX[count], mY[count], 1, mEraserPaint);
                }
            }
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (mStopDrawing) {
            return true;
        }

        int pointerCount = event.getPointerCount();
        int cappedPointerCount = pointerCount > MAX_FINGERS ? MAX_FINGERS : pointerCount;
        int actionIndex = event.getActionIndex();
        int action = event.getActionMasked();
        int id = event.getPointerId(actionIndex);

        if ((action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_POINTER_DOWN) && id < MAX_FINGERS) {
            if (mEraserMode) {
                mEraserModePausing = false;
            }
            mPesudoMovePaint[id] = true;

            mFingerPaths[id] = new Path();
            mFingerPaths[id].moveTo(event.getX(actionIndex), event.getY(actionIndex));
        } else if ((action == MotionEvent.ACTION_POINTER_UP || action == MotionEvent.ACTION_UP) && id < MAX_FINGERS) {
            mX[id] = 0;
            mY[id] = 0;

            if (mPesudoMovePaint[id]) {
                mPesudoMovePaint[id] = false;
                if(mFingerPaths[id] != null) {
                    mFingerPaths[id].lineTo(event.getX(actionIndex) + 0.1f, event.getY(actionIndex) + 0.1f);

                    mCanvas.drawPath(mFingerPaths[id], mCurrentPaint);

                    //if execute undo and then add new path, clear previous path and redo is not allowable
                    if (mPathCounter < mTopCounter) {
                        for (int i = mPathCounter+1; i <= mTopCounter; i++) {
                            mHistory.get(mCurrentPage).pop();
                        }
                        mTopCounter = mPathCounter;
                    }

                    mPathCounter++;
                    mEachPageCurrentCounter.set(mCurrentPage, mPathCounter);
                    mHistory.get(mCurrentPage).add(mPathCounter, new PathPaint(new Path(mFingerPaths[id]), mCurrentPaint));

                    if (mTopCounter < mPathCounter) {
                        mTopCounter = mPathCounter;
                    }

                    mFingerPaths[id].computeBounds(mPathBounds, true);
                    invalidate();
                    mFingerPaths[id] = null;
                }
                return true;
            } else {
                if (mEraserMode) {
                    mEraserModePausing = true;
                }

                mFingerPaths[id].setLastPoint(event.getX(actionIndex), event.getY(actionIndex));
                //mCompletedPaths.add(mFingerPaths[id]);

                mCanvas.drawPath(mFingerPaths[id], mCurrentPaint);

                //if execute undo and then add new path, clear previous path and redo is not allowable
                if (mPathCounter < mTopCounter) {
                    for (int i = mPathCounter+1; i <= mTopCounter; i++) {
                        mHistory.get(mCurrentPage).pop();
                    }
                    mTopCounter = mPathCounter;
                }

                mPathCounter++;
                mEachPageCurrentCounter.set(mCurrentPage, mPathCounter);
                mHistory.get(mCurrentPage).add(mPathCounter, new PathPaint(new Path(mFingerPaths[id]), mCurrentPaint));
                if (mTopCounter < mPathCounter) {
                    mTopCounter = mPathCounter;
                }

                mFingerPaths[id].computeBounds(mPathBounds, true);
                invalidate((int) mPathBounds.left, (int) mPathBounds.top, (int) mPathBounds.right, (int) mPathBounds.bottom);
                mFingerPaths[id] = null;
            }
        } else if (action == MotionEvent.ACTION_MOVE) {
            mPesudoMovePaint[id] = false;
        }

        for(int i = 0; i < cappedPointerCount; i++) {
            if(mFingerPaths[i] != null) {
                int index = event.findPointerIndex(i);

                //smooth the track
                int historySize = event.getHistorySize();
                for (int j = 0; j < historySize; j++) {
                    float historicalX = event.getHistoricalX(index, j);
                    float historicalY = event.getHistoricalY(index, j);
                    mFingerPaths[i].lineTo(historicalX, historicalY);
                }

                mFingerPaths[i].lineTo(event.getX(index), event.getY(index));

                mX[i] = event.getX(index);
                mY[i] = event.getY(index);

                mFingerPaths[i].computeBounds(mPathBounds, true);
                invalidate((int) mPathBounds.left, (int) mPathBounds.top, (int) mPathBounds.right, (int) mPathBounds.bottom);
            }
        }

        return true;
    }

    /**
     * Erases the signature.
     */
    public void clear() {
        mCanvas.drawColor(Color.TRANSPARENT, PorterDuff.Mode.CLEAR);

        mTopCounter = mPathCounter = -1;
        mEachPageCurrentCounter.set(mCurrentPage, -1);
        mHistory.get(mCurrentPage).clear();

        invalidate();
    }

    public void undo() {
        if (mPathCounter >= 0) {
            mPathCounter--;

            mEachPageCurrentCounter.set(mCurrentPage, mPathCounter);

            if (mBitmap != null) {
                mBitmap.recycle();
                mBitmap = null;
            }
            mBitmap = Bitmap.createBitmap(mWidth, mHeight, Bitmap.Config.ARGB_8888);
            mCanvas = new Canvas(mBitmap);
            for (int i = 0; i <= mPathCounter; i++) {
                mCanvas.drawPath(mHistory.get(mCurrentPage).get(i).getPath(), mHistory.get(mCurrentPage).get(i).getPaint());
            }
        }

        // Repaints the entire view.
        invalidate();
    }

    public void redo() {
        if (mPathCounter < mTopCounter) {
            mPathCounter++;

            mEachPageCurrentCounter.set(mCurrentPage, mPathCounter);

            mCanvas.drawPath(mHistory.get(mCurrentPage).get(mPathCounter).getPath(), mHistory.get(mCurrentPage).get(mPathCounter).getPaint());
        }

        // Repaints the entire view.
        invalidate();
    }

    public void newPage() {
        //store canvas to image
        try {
            FileOutputStream fos = new FileOutputStream( WhiteBoardApplication.INTERNAL_STORAGE_PATH+"/page_"+mCurrentPage+".png" );
            mBitmap.compress(Bitmap.CompressFormat.PNG, 100, fos);
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

        mCurrentPage = mTotalPage;
        mTotalPage += 1;

        init();

        invalidate();
    }

    public void previousPage() {
        if (mCurrentPage > 0) {
            mCurrentPage -= 1;
            mTopCounter = mHistory.get(mCurrentPage).size()-1;
            mPathCounter = mEachPageCurrentCounter.get(mCurrentPage);

            if (mBitmap != null) {
                mBitmap.recycle();
                mBitmap = null;
            }
            mBitmap = Bitmap.createBitmap(mWidth, mHeight, Bitmap.Config.ARGB_8888);
            mCanvas = new Canvas(mBitmap);
            for (int i = 0; i <= mPathCounter; i++) {
                mCanvas.drawPath(mHistory.get(mCurrentPage).get(i).getPath(), mHistory.get(mCurrentPage).get(i).getPaint());
            }

            invalidate();
        }
    }

    public void nextPage() {
        if (mCurrentPage+1 < mTotalPage) {
            mCurrentPage += 1;
            mTopCounter = mHistory.get(mCurrentPage).size()-1;
            mPathCounter = mEachPageCurrentCounter.get(mCurrentPage);

            if (mBitmap != null) {
                mBitmap.recycle();
                mBitmap = null;
            }
            mBitmap = Bitmap.createBitmap(mWidth, mHeight, Bitmap.Config.ARGB_8888);
            mCanvas = new Canvas(mBitmap);
            for (int i = 0; i <= mPathCounter; i++) {
                mCanvas.drawPath(mHistory.get(mCurrentPage).get(i).getPath(), mHistory.get(mCurrentPage).get(i).getPaint());
            }

            invalidate();
        }
    }

    public void setPage(int index) {
        if (index >= 0 && index < mTotalPage) {
            mCurrentPage = index;
            mTopCounter = mHistory.get(mCurrentPage).size()-1;
            mPathCounter = mEachPageCurrentCounter.get(mCurrentPage);

            if (mBitmap != null) {
                mBitmap.recycle();
                mBitmap = null;
            }
            mBitmap = Bitmap.createBitmap(mWidth, mHeight, Bitmap.Config.ARGB_8888);
            mCanvas = new Canvas(mBitmap);
            for (int i = 0; i <= mPathCounter; i++) {
                mCanvas.drawPath(mHistory.get(mCurrentPage).get(i).getPath(), mHistory.get(mCurrentPage).get(i).getPaint());
            }

            invalidate();
        }
    }

    public void setSignatureFeature(float width, WhiteBoardApplication.ANNOTATION_MODE mode) {
        if (mode == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_MARKER) {
            mEraserMode = false;
            mSignatureAlpha = 0xFF;
        } else if (mode == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HIGHLIGHTER) {
            mEraserMode = false;
            mSignatureAlpha = WhiteBoardApplication.ALPHA_VALUE;
        } else if (mode == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mEraserMode = true;
            mSignatureAlpha = 0x00;
        } else if (mode == WhiteBoardApplication.ANNOTATION_MODE.EDITOR_HANDWRITER) {
            mEraserMode = false;
            mSignatureAlpha = 0xFF;
        }

        mSignatureWidth = width;

        mCurrentPaint = null;
        mCurrentPaint = new Paint();

        mCurrentPaint.setAntiAlias(true);
        mCurrentPaint.setStyle(Paint.Style.STROKE);
        mCurrentPaint.setStrokeJoin(Paint.Join.ROUND);
        mCurrentPaint.setStrokeCap(Paint.Cap.ROUND);
        mCurrentPaint.setDither(true);

        if (mode != WhiteBoardApplication.ANNOTATION_MODE.EDITOR_ERASER) {
            mCurrentPaint.setColor(mSignatureColor);
            mCurrentPaint.setStrokeWidth(mSignatureWidth);
            mCurrentPaint.setAlpha(mSignatureAlpha);
        } else {
            mEraserModePausing = true;

            mCurrentPaint.setStrokeWidth(mSignatureWidth);
            mCurrentPaint.setMaskFilter(null);
            mCurrentPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));

            if (mEraserPaint == null) {
                mEraserPaint = new Paint();
                mEraserPaint.setAntiAlias(true);
                mEraserPaint.setColor(Color.GRAY);
                mEraserPaint.setStyle(Paint.Style.STROKE);
                mEraserPaint.setStrokeJoin(Paint.Join.ROUND);
                mEraserPaint.setStrokeCap(Paint.Cap.ROUND);
                mEraserPaint.setStrokeWidth(mSignatureWidth);
                mEraserPaint.setDither(true);
            } else {
                mEraserPaint.setStrokeWidth(mSignatureWidth);
            }
        }
    }

    public void setSignatureColor(int color) {
        mSignatureColor = color;

        mCurrentPaint = null;
        mCurrentPaint = new Paint();

        mCurrentPaint.setAntiAlias(true);
        mCurrentPaint.setColor(mSignatureColor);
        mCurrentPaint.setAlpha(mSignatureAlpha);
        mCurrentPaint.setStyle(Paint.Style.STROKE);
        mCurrentPaint.setStrokeJoin(Paint.Join.ROUND);
        mCurrentPaint.setStrokeCap(Paint.Cap.ROUND);
        mCurrentPaint.setStrokeWidth(mSignatureWidth);
        mCurrentPaint.setDither(true);
    }

    public void setStopDrawing(boolean draw) {
        mStopDrawing = draw;
    }

    public int getCurrentPage() {
        return mCurrentPage;
    }

    public boolean getStopDrawing() {
        return mStopDrawing;
    }

    public class PathPaint {
    
        private Path path;
        private Paint paint;
    
        //Constructor
        public PathPaint(Path pth, Paint pnt){
            path = pth;
            paint = pnt;
        }
    
        //Get the paint
        public Paint getPaint(){
            return paint;
        }
    
        //Get the path
        public Path getPath(){
            return path;
        }
    }
}
```