mkdir -p  /nmon/day/
cd /nmon/day
gzip *.nmon
find /nmon/day/* -mtime 30 -exec rm {} \;
/usr/bin/nmon  -fdt -s 300 -c 288
