max="$1"
date
echo "url: $2
rate: $max calls / second"
START=$(date +%s);

get () {
  curl -s -v "$1" 2>&1 | tr '\r\n' '\\n' | awk -v date="$(date +'%r')" '{print $0"\n-----", date}' >> /tmp/perf-test.log
}

while true
do
  echo $(($(date +%s) - START)) | awk '{print int($1/60)":"int($1%60)}'
  #sleep 1

  for i in `seq 1 $max`
  do
    get $2 &
    get "$2/owners/find" &
    get "$2/owners?lastName=" &
    get "$2/owners/1" &
    get "$2/owners/2" &
    get "$2/owners/3" &
    get "$2/owners/4" &
    get "$2/owners/5" &
    get "$2/owners/6" &
    get "$2/owners/7" &
    get "$2/owners/8" &
    get "$2/owners/9" &
    get "$2/owners/10" &
    get "$2/vets.html" &
    get "$2/oups" &
  done
done

