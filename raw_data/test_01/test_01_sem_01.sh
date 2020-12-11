#!/bin/bash
for xx in mrc tif
do
    for yy in count super
    do
        for zz in normed unproc
        do
            for ii in 120 60 40 30 24 20 15 12 10 8 6 5 4 3 2 1
            do
                fmt_ii=$(printf "%03d" ${ii})
                sem_log="${xx}/${yy}/${zz}/${xx}_${yy}_${zz}_120_${fmt_ii}/SerialEM.log"

                if [[ -f "${sem_log}" ]]
                then
                    awk -vxx=${xx} -vyy=${yy} -vzz=${zz} -vii=${ii} \
                        '/processed,/ { printf("%s,%s,%s,%d,%.2f\n", xx, yy, zz, ii, $3 / 1000) }' \
                        "${sem_log}"
                fi
            done
        done
    done
done
