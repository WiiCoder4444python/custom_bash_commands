# Custom commands

function greet() {
         echo Hello $1!
}

function mkcd() {
         mkdir $1
         echo Made directory $1
         cd $1
         echo In directory $1
}

function rmfdir() {
         rm -vr $1
         echo
         echo Deleted entire directory $1
}

function greetuser() {
         cd ~
         u=$(whoami)
         d=$(date)
         i=$(hostname -I)
         h=$(hostname)
         t=$(tty)
         f=$(pwd)
         r=$(cat /proc/meminfo | grep MemTotal:)
         c=$(nproc)
         o=$(uname)
         a=$(uname -m)
	 echo
         echo Hello, ${u}!
         echo Today is ${d}.
         echo Your IP Adress/es are ${i}.
         echo Your Hostname is ${h}.
         echo Your TTY is located in ${t}.
         echo Your home directory is ${f}/.
         echo You have ${r:16:27} of RAM.
         echo You have ${c} CPU cores.
         echo You are running ${o} with ${a} architecture.
}

function hgit() {
         git clone https://github.com/$1
}

function xmrig() {
	 d=$(pwd)
	 cd ~/xmrig/build/
	 ./xmrig -o gulf.moneroocean.stream -u $1 -p pi4-8gb-64b
	 cd ${d}
}

function append() {
	 cat $1 >> $2
	 echo
	 echo Added file $1 on to the end of file $2
}

function fanlog() {
	 python /home/ted/fanlogviewer.py
}
greetuser
