#@echo off
echo Refreshing Timesheets database ...
~/basex/bin/basex load-lmnl-db.bxs

echo ... Starting server ...
#start up BaseX server ...
~/basex/bin/basexhttp -l

#start up Firefox ...
xdg-open http://budgie:8984/Luminescent/
