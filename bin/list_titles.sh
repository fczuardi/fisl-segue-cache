TEMP_FILE="/tmp/titlelist"
DATA_FOLDER="./data/"
OUTPUT=""
NEW_TITLE=""

for i in `ls -1v data`;do 
  NEW_TITLE=`cat $DATA_FOLDER$i|grep "title\""|cut -d":" -f2`
  if [ ! -z "$NEW_TITLE" ]; then
    OUTPUT="$OUTPUT\n$i:$NEW_TITLE"
  fi
done;
echo $OUTPUT|less
