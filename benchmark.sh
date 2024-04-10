export BS=16
export MEMCAP=0
export MODEL="350m"
export GPUNUM=1

for MODEL in "350m" "1.3b"
do
for GPUNUM in 1
do
for BS in 16 8
do
for MEMCAP in 0 40
do
pkill -9 torchrun
pkill -9 python

bash ./run_clm.sh $BS $MEMCAP $MODEL $GPUNUM
done
done
done
done
