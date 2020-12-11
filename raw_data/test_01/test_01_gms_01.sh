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
                gms_log="${xx}/${yy}/${zz}/${xx}_${yy}_${zz}_120_${fmt_ii}/GMS.txt"

                if [[ -f "${gms_log}" ]]
                then
                    frgr=$((120 / ii))

                    for jj in $(seq 1 ${ii})
                    do
                        frnu=$((frgr * jj))
                        grep "Got frame ${jj} of ${ii}" "${gms_log}" |\
                            awk -vxx=${xx} -vyy=${yy} -vzz=${zz} -vii=${ii} -vfrnu=${frnu} \
                                '{ printf("%s,%s,%s,%d,%d,%.3f,%.2f\n", xx, yy, zz, ii, frnu, (1.0 / 75.0)*frnu, $NF) }'
                    done
                fi
            done
        done
    done
done
