while :
do
        STR=" `free -m |awk NR==2`"
        IFS=' ' eval 'array=($STR)'
        echo ${array[3]}
        if [ ${array[3]} -lt 700 ];then

                ps aux|grep offer-health |awk  '{print $2}' | xargs kill
#               service httpd restart
                ps aux|grep adv-api-worker|awk  '{print $2}' | xargs kill

        fi

        sleep 15m

done

