#!/bin/bash

# Install Wine
sudo dpkg --add-architecture i386
wget -nc -O /tmp/winehq.key https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add /tmp/winehq.key
sudo apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt -y update
sudo apt -y install --install-recommends winehq-stable

# Install Lutris
sudo add-apt-repository -y ppa:lutris-team/lutris
sudo apt -y update 
sudo apt -y install dialog lutris 

cat << 'EOF' > ~/bin/lutris_wrapper
#!/bin/bash

usage ()
{
    echo    "Usage : $0"
    echo    "    -h : show this"
    echo    "    -s : stop lutis"
    echo    "    -l : specify log file (default -> ~/Perso/log/lutris)"
}

log_file=~/Perso/log/lutris
lutris_exec=/usr/games/lutris
while [ $# -gt 0 ]; do
    case "$1" in
        -h | --help )   usage; exit 0;;
        -s)             stop=true; shift 1;;        
        -l)             log_file=$2; shift 2;;  
        *)              usage; exit 1;;
    esac
done

mkdir -p ${log_file%/*}
lutris_pid=$(pgrep ${lutris_exec##*/}$)
if [ ${stop} ]; then
    if [ -z ${lutris_pid} ]; then
        echo "Lutris is not running"
        exit 1
    fi
    echo -e "$(date --rfc-3339=seconds) ->Lutris Terminated\n\n" >>${log_file}
    kill -15 ${lutris_pid}
else
    if [ ! -z ${lutris_pid} ]; then
        echo "Lutris is already running"
        exit 1
    fi
    echo -e "$(date --rfc-3339=seconds) ->Lutris Launched" >>${log_file}
    ${lutris_exec} &>>${log_file} &
    disown $!
fi
exit 0
EOF
chmod 755 ~/bin/lutris_wrapper

# https://lutris.net/games/league-of-legends/ 
## Before each launch => sudo sh -c 'sysctl -w abi.vsyscall32=0'