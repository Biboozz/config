text="$(acpi)"

full=" "
tqrt=" "
half=" "
oqrt=" "
empt=" "

percent=$(echo $text | grep "%" | cut -d, -f 2 | cut -d ' ' -f 2 | cut -d% -f1)
echo -n $percent
echo -n "%"

if [ "$percent" -eq 100 ]; then
  echo -n " $full"
elif [ "$percent" -ge 75 ]; then
  echo -n " $tqrt"
elif [ "$percent" -ge 50 ]; then
  echo -n " $half"
elif [ "$percent" -ge 25 ]; then
  echo -n " $oqrt"
else
  echo -n " $empt"
fi

stat=$(echo $(acpi) | cut -d, -f1 | cut -d ' ' -f3)

if [ "$stat" = "Charging" ]; then
  load="1"
  echo -n " "
elif [ "$percent" -le 10 ]; then
  load="0"
  echo -n " "
fi

left=$(echo $(acpi) | cut -d, -f3 | cut -d ' ' -f2 | cut -d: -f1-2)
if [ ! "$percent" -eq 100 ] || [ load == "1" ]; then
  echo " $left"
fi
