# Mina Transaction Automation

Automatic sending of transactions on the [Mina Protocol](https://minaprotocol.com/)

### Download the start.sh file from the repository to your server where Mina's node is installed and take the following steps:

* Set the number of transactions to send: 
```
for ((i = 0 ; i < 300 ; i++));
```
Where 300 is the number of transactions;
* Set the range of Ming tokens sent:
```
amount=$((1 + $RANDOM % 3))
```
Where `1 + $RANDOM % 3` - range is from 1 to 3 tokens;
* Set receiver and sender addresses:
```
-receiver B62qqtwygyMDh56idVbEAWRzaJCMFg3EXBnUcohZbBemaH6W2HmmG3b
-sender B62qpSphT9prqYrJFio82WmV3u29DkbzGprLAM3pZQM2ZEaiiBmyY82
```

### Preparing to launch

1. Set read permissions `chmod 700 ./start.sh`
2. Run the script `./start.sh`

Done