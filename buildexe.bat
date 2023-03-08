curl http://localhost:7654/shutdown
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple pyopenssl tld "dnspython<2.4" pyinstaller httpx[http2]
py -m PyInstaller accesser.spec
copy /Y dist\accesser.exe D:\Accesser
