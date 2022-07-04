- [ ] screen的主機資訊，status目前只能用ping的，因為沒有heartbeat資訊可以參考
- [ ] pad的主機資訊目前為空，該怎麼整合?
- [ ] ping timeout會很久，不能在get screen list做
- [ ] 查詢subject => export => 應該要針對查詢的匯出，不能全部匯出
- [ ] tv box => 根據name export

- [ ] migration時，舊系統的規則並不一定會符合kangaroo的規則，例如name跟job_number
- [ ] jwt session過期後，會在manager/auth.py:130發生exception，此時的api只會回傳UNKNOWN_ERROR，這樣前端有辦法根據error code導到login頁面嗎?
- [ ] 401後應該直接re-login
- [ ] add png photo failed
{"log":"2019-05-22 15:51:24,252 - [/app/app/manager/subject.py:349] - ERROR Traceback (most recent call last):\n","stream":"stderr","time":"2019-05-22T07:51:24.252614135Z"}
{"log":"  File \"/usr/local/lib/python3.6/dist-packages/PIL/JpegImagePlugin.py\", line 621, in _save\n","stream":"stderr","time":"2019-05-22T07:51:24.25265021Z"}
{"log":"    rawmode = RAWMODE[im.mode]\n","stream":"stderr","time":"2019-05-22T07:51:24.252654015Z"}
{"log":"KeyError: 'RGBA'\n","stream":"stderr","time":"2019-05-22T07:51:24.252656127Z"}
{"log":"\n","stream":"stderr","time":"2019-05-22T07:51:24.252658225Z"}
{"log":"During handling of the above exception, another exception occurred:\n","stream":"stderr","time":"2019-05-22T07:51:24.252660247Z"}
{"log":"\n","stream":"stderr","time":"2019-05-22T07:51:24.252662332Z"}
{"log":"Traceback (most recent call last):\n","stream":"stderr","time":"2019-05-22T07:51:24.252664313Z"}
{"log":"  File \"/app/app/manager/subject.py\", line 311, in create_photo\n","stream":"stderr","time":"2019-05-22T07:51:24.252666785Z"}
{"log":"    (origin_url, filename, file_rel_path, file_abs_path) = MediaStorage.save_image(payload, category='photo', fppname=fpp_photo)\n","stream":"stderr","time":"2019-05-22T07:51:24.252669191Z"}
{"log":"  File \"/app/app/common/media_storage.py\", line 135, in save_image\n","stream":"stderr","time":"2019-05-22T07:51:24.252671314Z"}
{"log":"    img.save(file_abs_path)\n","stream":"stderr","time":"2019-05-22T07:51:24.252673425Z"}
{"log":"  File \"/usr/local/lib/python3.6/dist-packages/PIL/Image.py\", line 1950, in save\n","stream":"stderr","time":"2019-05-22T07:51:24.252675418Z"}
{"log":"    save_handler(self, fp, filename)\n","stream":"stderr","time":"2019-05-22T07:51:24.252677528Z"}
{"log":"  File \"/usr/local/lib/python3.6/dist-packages/PIL/JpegImagePlugin.py\", line 623, in _save\n","stream":"stderr","time":"2019-05-22T07:51:24.252679526Z"}
{"log":"    raise IOError(\"cannot write mode %s as JPEG\" % im.mode)\n","stream":"stderr","time":"2019-05-22T07:51:24.252681629Z"}
{"log":"OSError: cannot write mode RGBA as JPEG\n","stream":"stderr","time":"2019-05-22T07:51:24.252683654Z"}

- [ ] 錯誤訊息統一都是UNKNOWN，這樣前端要怎麼搞?
- [ ] 錯誤的exception會在最外層才有，這樣要怎麼debug?
{"log":"2019-05-22 16:54:43,532 - [/app/app/views/subject.py:54] - ERROR local variable 'category' referenced before assignment\n","stream":"stderr","time":"2019-05-22T08:54:43.533224089Z"}
{"log":"192.168.56.3 - - [22/May/2019:16:54:43 +0800] \"POST /api/subject_t HTTP/1.1\" 200 50 \"-\" \"curl/7.47.0\" \"-\"\n","stream":"stdout","time":"2019-05-22T08:54:43.535497529Z"}

- [ ] migration舊系統時，必須將舊系統中的subject欄位、規則，通通改成meet kangaroo的設計


| face+ | kangaroo |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ----- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| O     | O        | 全都成功，前台會看到新增的subject                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| O     | X        | 1. 現象： face++會有此人的辨識紀錄，但event到kangaroo後會因為反查不到subject被設定成陌生人<br>2. 同步： 在同步的當下，如果依舊F有K沒有，會刪除face++中的這筆資料<br>3. 同步前，使用者如果再次新增資料<br> a. 會收到face++ email is existed的錯誤，然後再用name去face++查詢subject，得到結果後for all比對email，最後得到subject_id<br>若查詢的操作失敗，有可能會在kangaroo建立一筆subject_id跟face++不一致的subject<br>b. 如果新增的資料中沒有帶email欄位，face++會新增成功，此時face++會有兩筆一樣的subject資料<br>kangaroo新增subject後，只會sync第二筆subject的subject_id |
| X     | O        | 不會發生                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| X     | X        | 前半段就遭遇失敗，前台不會有這筆subject<br>使用者如果再次新增資料，有可能造成face++有兩筆一樣的subject資料<br>因為kangaroo中沒有這筆資料，所以unique的篩選無法正確處理                                                                                                                                                                                                                                                                                                                                                                                |


| face+ | kangaroo |                                                                                                                                                                                                                                                                                                                                                                                      |
| ----- | -------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| O     | O        | 全都成功 => OK                                                                                                                                                                                                                                                                                                                                                                        |
| O     | X        | 1. 現象： face++會有此人的辨識紀錄，但event到kangaroo後會因為反查不到subject被設定成陌生人<br>2. C：使用者再次新增資料，目前只能用name去查詢face++，然後再比對job_number，所以如果第二次create時，改動到其他欄位，最後會造成face++跟kangaroo在這筆subject的資料上不同步<br>3. R/U/D：kangaroo無此筆subject，所以不會對它進行這些操作<br>4. 同步： 在同步的當下，如果依舊F有K沒有，會刪除face++中的這筆資料 |
| X     | O        | 不會發生                                                                                                                                                                                                                                                                                                                                                                              |
| X     | X        | 流程前半段就遭遇失敗 => OK                                                                                                                                                                                                                                                                                                                                                             |

| face+ | kangaroo |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ----- | -------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| O     | O        | 流程前半段就遭遇失敗 => OK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| O     | X        | 1. 現象： face++會有此人的辨識紀錄，但event到kangaroo後會因為反查不到subject被設定成陌生人；kangaroo中多有zombie images<br>2. C：使用者新增資料，還是會先用name去查詢face++，然後再比對job_number，如果有比對到某一筆subject符合，取的subject_id後，相當於是在更新kangaroo中的，那筆相同subject_id、但deleted欄位為True的資料<br>3. R/U/D：kangaroo無此筆subject，所以不會對它進行這些操作<br>4. 同步： 在同步的當下，如果依舊F有K沒有，會刪除face++中的這筆資料 |
| X     | O        | 不會發生                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| X     | X        | 全都成功 => OK                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |






1. 如果subject_type不是employee，自動使用一組uuid複寫job_number
2. migration時，一定要確保face++ job_number為unique，如果原本設定的值沒有，那就加uuid上去 (831392-34624234, 831392-23564571)
3. face++ subject list query到的資料會分頁嗎
4. png photo會有error => OSError: cannot write mode RGBA as JPEG
5. 每次get screen list，都偷偷做一次sync
6. sync event後，就把face++紀錄刪掉?!
7. subject/event query by job_number
8. phone unique?
9. create subject後，face++的sid在kangaroo是否會有重複的問題
10. 不同步的手動補救方式=>員工A一直被辨識成員工B or 員工A一直沒有辨識結果
11. 如果photos=[]，會錯
332             logger.error("json.dumps(photo_ids) == %s", json.dumps(photo_ids))

12. 開機後先檢查transaction?
13. face++ get subject/screen可以用id query
14. subject/screen 欄位修改
15.
    233 @system_bp.route('/system/account/list', methods=['GET', 'POST'])
    234 @login_required
    235 def account_lists():
16. email重複 => A公司HR打錯資料；B公司HR輸入員工email時報錯重複，但檢查所有員工email資料後，發現並沒有重複，但卻完全沒辦法更新email資料
17. redis data設定timeout
18. face++一張photo只能對應一個id，所以不可能兩個subject同時對應到同一個photo_id
19. 2.9 /pad/login response中會有screen_id
20. /pad/login無法直接指定location
21. pad, facebox使用api註冊pad，直接使用kangaroo的/pad/login?? 需要transaction機制?
22. 帳號管理/password reset??
23. subject/screen CUD => update redis
24. 如果不是api request，都不能用current_app或是g，使用到這些module的地方都不可以在非api的function中
25. 程式中的current_app及g都必須全部審視一遍，確認context是可以access的


app/views/system.py
# check box limit
screen_count = box.get_screen_count()
if screen_count >= box.limit_videos:
    return error_result(ErrorCode.ERROR_BOX_LIMIT_SCREEN, format_tuple=(screen_count,))







FacePad
1. 要能從face++ server上反抓資料，寫入pad中
