docker pull ipanchenko/my_mnist:latest
mkdir data
echo "Now running for training"
docker run -t -v "`pwd`/data":/project/data my_mnist python main.py fit
echo "Now running for predicting"
docker run -t -v "`pwd`/data":/project/data my_mnist python main.py predict
