#!/bin/bash

echo ">>>>>>>>Start Sending Transaction<<<<<<<<"
echo ""

for ((i = 0 ; i < 300 ; i++)); do
    amount=$((1 + $RANDOM % 3))

    fee=$(( $RANDOM %100 ))
    fee=$( bc <<< "scale=9;$fee/555" )
    echo "In" $i "transaction sent" $amount "Mina with fee" $fee

    docker exec -it mina coda client send-payment \
         -amount $amount \
         -receiver B62qqtwygyMDh56idVbEAWRzaJCMFg3EXBnUcohZbBemaH6W2HmmG3b \
         -fee $fee \
         -sender B62qpSphT9prqYrJFio82WmV3u29DkbzGprLAM3pZQM2ZEaiiBmyY82
    sleep $[ (30 + $RANDOM % 100 ) ]s

echo "----------------------------"
done
echo ""
echo ">>>>>>>>End Sending<<<<<<<<"