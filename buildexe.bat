curl http://localhost:7654/shutdown
rd /s /q build
rd /s /q dist
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple "pyopenssl<23.3.0" tld "dnspython<2.4" pyinstaller httpx[http2] "tomli>=1.1.0"
py -m PyInstaller accesser.spec
copy /Y dist\accesser.exe D:\Accesser
