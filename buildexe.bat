py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pyopenssl tld dnspython tornado pyinstaller
py -m PyInstaller accesser.spec
copy /Y dist\accesser.exe D:\Accesser