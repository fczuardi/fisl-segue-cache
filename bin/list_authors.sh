DATAPATH="data/"
for i in `ls -1v $DATAPATH`;do 
  LINE=`cat "$DATAPATH$i"|grep "name\""|cut -d":" -f2`
  if [ ! -z "$LINE" ];then 
    echo "$i\t$LINE"
  fi;
done;
