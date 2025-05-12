
# Date and time
date=$(date "+%d/%m/%Y")
time=$(date "+%H:%M")


# Battery or charger
battery_charge=$(cat /sys/class/power_supply/BAT1/capacity)
battery_status=$(cat /sys/class/power_supply/BAT1/status)


echo "$battery_charge% | $date 🕘 $time"
