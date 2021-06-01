echo "I will now create a docker image"
#using the new docker buildx ---> this means that if run on Apple M1 you will get a working image :)
docker buildx build --platform linux/amd64 docker -t osdev
echo "all done"
