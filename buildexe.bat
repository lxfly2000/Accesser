curl http://localhost:7654/shutdown
rd /s /q build
rd /s /q dist
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U -r requirements.txt
py -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U "pyopenssl<23.3.0" pyinstaller httpx[http2] httpx[brotli] httpx[socks]
py -m PyInstaller accesser.spec
copy /Y dist\accesser.exe D:\Accesser
