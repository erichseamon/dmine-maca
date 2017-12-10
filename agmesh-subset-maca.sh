#!/bin/sh
#
# NAME: agmesh-subset-maca.sh
# PURPOSE: Bash script that is called by R for subsetting maca climatic datasets
# AUTHOR: Erich Seamon
# INSTITUTION: University of Idaho
# DATE: 12/10/2014
#

source /tmp/agmesh-subset-maca-R-scenario.txt

#echo "enter first year of data range: "
#read yearstart
#echo "enter last year of data range: "
#read yearend
#echo "enter the minimum latitude:"
#read lat1
#echo "enter the maximum latitude:"
#read lat2
#echo "enter the minimum longitude:"
#read lon1
#echo "enter the maximum longitude:"
#read lon2
yearspan=$(seq $yearstart $yearend)

mkdir -p /agmesh-maca-scenarios/$scenario/
#mkdir -p /agmesh-maca-scenarios/$scenario/ETtimelapse/
#mkdir -p /agmesh-maca-scenarios/$scenario/tmmximages/
#mkdir -p /agmesh-maca-scenarios/$scenario/tmmnimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/rminimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/rmaximages/
#mkdir -p /agmesh-maca-scenarios/$scenario/sradimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/vsimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/analysis/
#mkdir -p /agmesh-maca-scenarios/$scenario/pdsiimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/thimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/petimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/ercimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/biimages/
#mkdir -p /agmesh-maca-scenarios/$scenario/fm100images/
#mkdir -p /agmesh-maca-scenarios/$scenario/fm1000images/
#mkdir -p /agmesh-maca-scenarios/$scenario/fm1images/



for k in pdsi_ 
do

for i in $yearspan; do

#-january

j=jan_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."
ncks -O -d day,1,3 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,1,31 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-february
j=feb_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,4,6 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,32,59 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-march
j=mar_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,7,9 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,60,90 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-april
j=apr_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,10,12 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,91,120 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-may
j=may_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,13,15 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,121,151 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-june
j=jun_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,16,18 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,152,181 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-july
j=jul_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,19,21 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,182,212 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-august
j=aug_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,22,24 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,213,243 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-september
j=sep_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,25,27 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,244,273 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-october
j=oct_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,28,30 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,274,304 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-november
j=nov_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,31,33 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,305,334 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-december
j=dec_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,34,35 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,335,365 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

done

done




for k in bi_ pr_ erc_ fm1000_ fm100_ fm1_ tmmx_ tmmn_ rmin_ rmax_ vs_ th_ pet_ srad_ sph_  
do

for i in $yearspan; do

#-january

j=jan_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."
ncks -O -d day,1,31 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc 
#ncra -O -d day,1,31 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-february
j=feb_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,32,59 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,32,59 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-march
j=mar_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,60,90 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,60,90 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-april
j=apr_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,91,120 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,91,120 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-may
j=may_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,121,151 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,121,151 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-june
j=jun_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,152,181 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,152,181 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-july
j=jul_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,182,212 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,182,212 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-august
j=aug_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,213,243 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,213,243 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-september
j=sep_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,244,273 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,244,273 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-october
j=oct_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,274,304 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,274,304 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-november
j=nov_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,305,334 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,305,334 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#-december
j=dec_
varyear=$k$i
varyearfinal=$k$j$i
echo "Calculating and creating" $j "..."

ncks -O -d day,335,364 /reacchspace/obj1/netcdf/MET/data/$varyear.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
#ncra -O -d day,335,365 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc

#ncea -O -d lat,$lat1,$lat2 -d lon,$lon1,$lon2 /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc
ncpdq -O -a day,lat,lon /agmesh-scenarios/$scenario/$varyearfinal.nc /agmesh-scenarios/$scenario/$varyearfinal.nc


done

done

