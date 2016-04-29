import sys
import gdb

# Update module path.
dir_ = '/usr/OSS/glib_installglib_cv_long_long_format=yes/share/glib-2.0/gdb'
if not dir_ in sys.path:
    sys.path.insert(0, dir_)

from gobject import register
register (gdb.current_objfile ())
