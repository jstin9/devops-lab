echo "------------------------"
echo "Server Performace Stats:"
echo "------------------------"

echo -n "OS distribution: "
lsb_release -d | awk '{$1=""; print $0}'

echo -n "Uptime: "
uptime -p | sed 's/up //'

echo -n "Total CPU usage: "
top -bn 2 -d 0.01 | grep '^%Cpu' | tail -n 1 | awk '{print $2 "%"}'

echo -n "Total memory usage: "
free -h | grep Mem | awk '{printf "%s ", $3}'
free | grep Mem | awk '{printf "(%d%%) \n", $3/$2 * 100}'

echo -n "Total memory free: "
free -h | grep Mem | awk '{printf "%s ", $7}'
free | grep Mem | awk '{printf "(%d%%) \n", $7/$2 * 100}'

echo -n "Total disk usage: "
df -h | head -n 2 | tail -n 1 | awk '{printf "%s ", $3}'
df | head -n 2 | tail -n 1 | awk '{printf "(%d%%) \n", ($3/$4 * 100)}'

echo -n "Total disk free: "
df -h | head -n 2 | tail -n 1 | awk '{printf "%s ", $4}'
df | head -n 2 | tail -n 1 | awk '{printf "(%d%%) \n", 100 - ($3/$4 * 100)}'

echo -e "Top 5 processes by CPU usage:"
ps -eo pcpu,pid,comm --sort=-pcpu | head -n 6

echo "Top 5 processes by memory usage:"
ps -eo pmem,pid,comm --sort=-pmem | head -n 6
