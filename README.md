# The-Worlds-Worst-Operating-System
This is nothing but pain.


Thanks to @davidcallanan for creating the basic scaffolding in order for me to create this, it saved me a lot of time. This allows C code to be ran, and started out with just hello world, everything from there has been added by my self or others who have contributed to the project. 

### Requirments 

You will need a text editor like vim or vscode, you will also need a computer with at least a quadcore processor somthing like a Intel® Core™2 Quad Processor Q6600 or newer with at least 8gb of memory and 5gb of hard disk space. Really not much is needed if you have a text editor and a computer from the last 10 years you can mess around with this.



### Build Tool Chain

To Build this you will need debain or ubuntu.

```console
iain@rocketship:~$ chmod +x setup-toolchain.sh
iain@rocketship:~$ sudo ./setup-toolchain.sh

```

Then you can run the build now you have the toolchain.

```console
iain@rocketship:~$ make build-x86_64
```

Load up the new iso folder on a qemu virtual machine from the root directory. 

```console
qemu-system-x86_64 -cdrom dist/x86_64/kernel.iso
```

### Docker

if you wish you can use docker to setup everything you need instead of doing the above, all you have to do is make sure that you have docker installed. 
Then you can run the following.

Create the docker image:

```console
iain@rocketship:~$ chmod +x ./build-docker-image.sh
iain@rocketship:~$ ./build-docker-image.sh
```

Run the docker image, this will work on platforms that are not even X86_64 such as Apple M1 and ARM.

```console
iain@rocketship:~$ chmod +x ./start-docker-env.sh
iain@rocketship:~$ ./start-docker-env.sh
```

Now you should be in the docker container so just build the tool chain and you are away!

```console
iain@dockercontainer:~$ chmod +x setup-toolchain.sh
iain@dockercontainer:~$ ./setup-toolchain.sh
iain@dockercontainer:~$ make build-x86_64
```

### Current Staus 

Broken - Working on the VGA driver (VGA.C) and getting 1024x768 video mode running, currently not compiling. 
