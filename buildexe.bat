curl http://localhost:7654/shutdown
rd /s /q build
rd /s /q dist
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
py -m PyInstaller accesser.spec
copy /Y dist\accesser.exe D:\Accesser
