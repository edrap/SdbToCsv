echo 'Type the weewx.sdb path, then press [ENTER]:'
read SDBPATH
sqlite3 $SDBPATH << END_SCRIPT
.headers on
.mode csv
.output weewx.csv
select * from archive;
.output stdout
.exit
END_SCRIPT
exit 0