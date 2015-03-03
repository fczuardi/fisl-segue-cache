DATAPATH="data/";
find "$DATAPATH"* -exec grep -iH $1 {} \;| grep -i "$1"
