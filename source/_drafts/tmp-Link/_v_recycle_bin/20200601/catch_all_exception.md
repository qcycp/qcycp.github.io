捕捉所有異常

這個將會獲得除了SystemExit，KeyboardInterrupt和GeneratorExit之外的所有異常。
如果你還想捕獲這三個異常，將Exception改成BaseException即可。
```python
try:
   ...
except Exception as e:
   ...
   print('Reason:', e)
```