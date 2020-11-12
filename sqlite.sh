rm -f $1.sql >/dev/null 2>&1
rm -f $2 >/dev/null 2>&1
echo PRAGMA optimize(0xfffe); > $1.sql
sqlite3 $1 .dump >> $1.sql
sqlite3 $2 < $1.sql
rm -f $1.sql >/dev/null 2>&1
