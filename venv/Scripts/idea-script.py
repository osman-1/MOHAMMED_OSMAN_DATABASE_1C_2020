#!C:\Test\MOHAMMED_OSMAN_DATABASE_1C_2020\venv\Scripts\python.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'idea==0.1','console_scripts','idea'
__requires__ = 'idea==0.1'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('idea==0.1', 'console_scripts', 'idea')()
    )
