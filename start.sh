MOBAIP=$(curl ix.io/$MOBAADRESS)
SMPIP=$(curl ix.io/$SMPADRESS)
LOBBYIP=$(curl ix.io/$LOBBYADRESS)

cd /home/user/bungee

sed -i "s/mobaadress/$MOBAIP/g" config.yml
sed -i "s/lobbyadress/$LOBBYIP/g" config.yml
sed -i "s/smpadress/$SMPIP/g" config.yml

bruh(){
    kill -- -1
}

bungeeupdate(){
    NEWMOBAIP=$(curl ix.io/$MOBAADRESS)
    NEWSMPIP=$(curl ix.io/$SMPADRESS)
    NEWLOBBYIP=$(curl ix.io/$LOBBYADRESS)

    if [ "$NEWMOBAIP" = "$MOBAIP" ]
    then
    echo moba oke
    else
    bruh
    fi

    if [ "$NEWLOBBYIP" = "$LOBBYIP" ]
    then
    echo lobby oke
    else
    bruh
    fi

    if [ "$NEWSMPIP" = "$SMPIP" ]
    then
    echo smp oke
    else
    bruh
    fi
}

while :
do
java -Xmx120M -Xms120M -jar BungeeCord.jar


curl "https://gist.githubusercontent.com/paperbenni/284dafc72d522068e3f4e11ed713ceb4/raw/61d3111455f49ff33c96b421e48eb9e20fc756ad/config.yml" > config.yml
MOBAIP=$(curl ix.io/$MOBAADRESS)
SMPIP=$(curl ix.io/$SMPADRESS)
LOBBYIP=$(curl ix.io/$LOBBYADRESS)
sed -i "s/mobaadress/$MOBAIP/g" config.yml
sed -i "s/lobbyadress/$LOBBYIP/g" config.yml
sed -i "s/smpadress/$SMPIP/g" config.yml

sleep 5
done &

while :
do
ssh -oStrictHostKeyChecking=no -R 2555:localhost:25577 serveo.net
sleep 2
done