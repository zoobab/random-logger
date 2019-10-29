#!/bin/sh
n=-1
c=0
if [ -n "$3" ]
then
   n=$3
fi

while [ $n -ne $c ]
do
   I=$(shuf -i 1-4 -n 1)
   DATE=`date -Iseconds`
   case "$I" in
      "1") echo "$DATE ERROR An error is usually an exception that has been caught and not handled."
      ;;
      "2") echo "$DATE INFO This is less important than debug log and is often used to provide context in the current task."
      ;;
      "3") echo "$DATE WARN A warning that should be ignored is usually at this level and should be actionable."
      ;;
      "4") echo "$DATE DEBUG This is a debug log that shows a log that can be ignored."
      ;;
   esac
   c=$(( c+1 ))
done
