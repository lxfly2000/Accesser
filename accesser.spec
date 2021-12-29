# -*- mode: python -*-

block_cipher = None


a = Analysis(['accesser.py'],
             pathex=['E:/Yuxin/Accesser'],
             binaries=[],
             datas=[('config.json.default', '.'),
                    ('template/pac', 'template'),
                    ('sysproxy.exe', '.'),
                    ('template/index.html', 'template'),
                    ('static/main.js', 'static'),
                    ('static/style.css', 'static'),
                    ('dnscrypt/dnscrypt-proxy.exe', 'dnscrypt'),
                    ('dnscrypt/dnscrypt-proxy.toml', 'dnscrypt'),
                    ('dnscrypt/cloaking-rules.txt', 'dnscrypt'),
                    ('C:/Users/Yuxin/AppData/Local/Programs/Python/Python39/Lib/site-packages/tld/res/effective_tld_names.dat.txt', 'tld/res')],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='accesser',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=False )
