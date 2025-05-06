
# Keyboard input name
keyboard_input_name="1:1:AT_Translated_Set_2_keyboard"

# Date and time
date_and_week=$(date "+%d/%m/%Y")
current_time=$(date "+%H:%M")

#Battery
battery_level=$( cat "/sys/class/power_supply/BAT1/capacity" )
battery_status=$( cat "/sys/class/power_supply/BAT1/status" )

#ram
precision=2
prec=1
ram=$(free -m | awk 'NR==2{print $3*100/$2 }')
r_ram=$(printf "%.${precision}f" "$ram")

#CPU
cpu=$( top -bn1 | grep "Cpu(s)" | awk '{printf "%d\n", $2 + $4}'
)
len=${#cpu} 
pre=""
if [ $len == "1" ]; then
    pre=" "
fi

# Network
Eth_status=$( nmcli -t -f TYPE,STATE device | grep ethernet )
Wifi_status=$( nmcli -t -f TYPE,STATE device | grep -E '[:]?wifi[:]' )

connection="No Internet"
connection_name=""

if [ $Eth_status == "ethernet:connected" ]; then
    connection_name=$( nmcli -t -f TYPE,CONNECTION device | grep ethernet )
    conn_name=${connection_name:9}
    connection="Ethernet"
fi

if [ $Wifi_status == "wifi:connected" ]; then
    connection_name=$( nmcli -t -f TYPE,CONNECTION device | grep -E '[:]?wifi[:]' )
    conn_name=${connection_name:5}
    connection="WiFi"
fi


echo "$connection $conn_name | CPU $pre$cpu% | RAM $r_ram% | $battery_level% $battery_status | $date_and_week | $current_time ";
