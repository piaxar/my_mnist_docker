# My MNIST docker image
Project, based on docker image with MNIST model, written on PyTorch. 
## Intro
For fast start, follow this:
```sh
git clone https://github.com/piaxar/my_mnist_docker.git
cd my_mnist_docker
chmod +x ./start.sh
./start.sh
```
Script will pull docker image, create required directories and run training of model for mnist, followed by testing. 
## Details
Script consists of 3 main parts. 
- Pulling docker image
``` sh
docker pull ipanchenko/my_mnist:latest
```
- Creating required directories
```
mkdir data
```
- Running fit and predict, using pulled image
```
docker run -t -v "`pwd`/data":/project/data my_mnist python main.py fit
docker run -t -v "`pwd`/data":/project/data my_mnist python main.py predict
```
Feel free to play with this commands, but don't forget to do prerequests and also do not run 'predict' before 'fit' just because model file is not created yet.
