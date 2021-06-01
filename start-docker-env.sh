echo "I will now start the docker image make sure you have built it first"
echo "Once you have launched this continer you will need to make sure to build the toolchain using the script"
echo "please wait..."
sleep 5
echo "I will pass through $(pwd)"
sleep 2
docker run --rm -it -v $(pwd):/root/env osdev
