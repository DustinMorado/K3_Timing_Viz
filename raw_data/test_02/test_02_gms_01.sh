#!/bin/bash
for xx in mrc tif
do
    for yy in count super
    do
        for zz in normed unproc
        do
            for ii in {1..40}
            do
                gms_log="${xx}/${yy}/${zz}/GMS_${ii}.txt"

                if [[ -f "${gms_log}" ]]
                then
                    for jj in $(seq 1 ${ii})
                    do
                        grep "Got frame ${jj} of ${ii}" "${gms_log}" |\
                            awk -vxx=${xx} -vyy=${yy} -vzz=${zz} -vii=${ii} -vjj=${jj}\
                                '{ printf("%s,%s,%s,%d,%d,%.3f,%.2f\n", xx, yy, zz, ii, jj, (1.0 / 75.0)*jj, $NF) }'
                    done
                fi
            done
        done
    done
done
