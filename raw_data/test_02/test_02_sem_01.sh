#!/bin/bash
for xx in mrc tif
do
    for yy in count super
    do
        for zz in normed unproc
        do
            for ii in {1..40}
            do
                sem_log="${xx}/${yy}/${zz}/SerialEM_${ii}.log"

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
