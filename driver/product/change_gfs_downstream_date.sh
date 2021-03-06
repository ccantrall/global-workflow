set -x

# export cyc=12
# export cyc=18
export fhr=012
export dir=` pwd `
export PDY=`date -u +%Y%m%d`
export PDY1=`expr $PDY - 1`

export var=20190829
export var1=20190827

export gdas=/gpfs/dell1/nco/ops/com/gfs/prod/gdas.${PDY}/${cyc}
export gdasgp=/gpfs/dell1/nco/ops/com/gfs/prod/gdas.${PDY}/${cyc}/gempak
export gdasmeta=/gpfs/dell1/nco/ops/com/gfs/prod/gdas.${PDY}/${cyc}/gempak/meta

export gdastest=/gpfs/dell2/ptmp/Boi.Vuong/com/gfs/prod/gdas.${PDY}/${cyc}
export gdastestgp=/gpfs/dell2/ptmp/Boi.Vuong/com/gfs/prod/gdas.${PDY}/${cyc}/gempak
export gdastestmeta=/gpfs/dell2/ptmp/Boi.Vuong/com/gfs/prod/gdas.${PDY}/${cyc}/gempak/meta

for cyc in 00 06 12 18
# for cyc in 00
do
sed -i "s/${var1}/${var}/g"  run_JGDAS_GEMPAK_dell.sh_${cyc}
sed -i "s/${var1}/${var}/g"   run_JGDAS_GEMPAK_META_NCDC_dell.sh_${cyc}
sed -i "s/${var1}/${var}/g"  run_JGFS_GEMPAK_dell.sh_${cyc}
sed -i "s/${var1}/${var}/g"  run_JGFS_AWIPS_20KM_1P0DEG_dell.sh_${cyc} 
sed -i "s/${var1}/${var}/g"   run_JGFS_AWIPS_G2_dell.sh_${cyc}   
sed -i "s/${var1}/${var}/g"  run_JGFS_FBWIND_dell.sh_${cyc} 
sed -i "s/${var1}/${var}/g"  run_JGFS_GEMPAK_META_dell.sh_${cyc}
sed -i "s/${var1}/${var}/g"  run_JGFS_GEMPAK_NCDC_UPAPGIF_dell.sh_${cyc} 
sed -i "s/${var1}/${var}/g"  run_JGFS_PGRB2_SPEC_NPOESS_dell.sh_${cyc}
sed -i "s/${var1}/${var}/g"  run_JGFS_PGRB2_SPEC_GEMPAK_dell.sh_${cyc} 
sed -i "s/${var1}/${var}/g"  run_JGDAS_BULLS_NAVY_dell.sh_${cyc}
done
