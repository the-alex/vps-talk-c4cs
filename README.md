# Virtual Private Servers Talk

## Slides
You can run the slides locally by navigating to `./presentaion` and running the command `python -m SimpleHTTPServer` for python 2 and `python -m http.server` for python 3.

## Goals
By the end of this talk, students should understand how to create and use a virtual private server, as well as understand how they are used 'in the cloud'.

* What is a VPS
* How to host your own web services (or personal website) for free/cheap?
* Tools for deploying and managing machine images
* How does all of this use / differ from virtual machines?
* Know how to use a person VPS and an enterprise VPS.
    * Digital Ocean vs. Amazon AWS
* Have one or two clearly understood use cases.
    * File Storage (Movies / HD Music)
    * Hosting a personal web site or project.
* VirtualBox vs. Vagrant

## Lesson Plan
This is how we're going to achieve the above goals.

1. A little history
    * Matt's lecture taught us that the internet is composed of a set of
      protocols that exchange text and binary data over dumb cables.
    * Abstraction is a powerful thing. As long as each layer is clear about
      what it is responsible for, you can build on top of it.
    * The internet started as a way for physicists to share papers.
    * Dumb terminals hard connected to super computers, then to big computers,
      and again to dumb terminals, this time wirelessly connected to
supercomputers.  
1. What is a virtual private server (VPS)?
    * "A VPS runs its own copy of an operating system, and customers have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS. For many purposes they are functionally equivalent to a dedicated physical server, and being software-defined, are able to be much more easily created and configured." -- Wikipedia
    * It's a computer in the great cloud above.
    * The Internet is simply a network of computers, all able to share files with each other. This brings to mind a few simple use cases.
1. What can I do with a VPS?
    * Essentially everything you could normally do, but this time the machine costs you very little, is continuously backed up, and can run unchecked for weeks at a time.
    * Host a personal website or app
    * Run a program for a long time without interruption (web crawler + tmux)
    * Rent a more powerful PC (neural style in AWS)
1. What do companies do with VPSs?
    * They make up 'the cloud'.
    * They use various tools to do this.
    * Docker fixes the "Works on my machine" problem by standardizing the environment in which the programs are run.

## Helpful hints

These were just some helpful links for me when I was presenting in case something broke or I forgot a line. It turned out that I didn't need most of them.

### AWS EC2 Management Console
https://console.aws.amazon.com/ec2/v2/home?region=us-east-1###Instances:sort=instanceId

### ssh into AWS
ssh -i "aws/lecture.pem" ubuntu@ec2-52-90-228-204.compute-1.amazonaws.com

### Magic path setting
export LD_LIBRARY_PATH=/home/ubuntu/torch-distro/install/lib:/home/ubuntu/torch-distro/install/lib:/home/ubuntu/cudnn-6.5-linux-x64-v2-rc2

### Image doesn't install this correctly, so we have to do it again
luarocks install sys

### SCP file from AWS
scp -i ./lecture.pem ubuntu@ec2-52-91-173-6.compute-1.amazonaws.com:~/neural-style/dat_neural.png .

### Card Demo
http://104.131.102.44:3000/

### Neural Style
It's different everytime!

### If docker dies
docker-machine start datadog
eval (docker-machine env datadog)

### Neural-Style gist
https://gist.github.com/elad/e3a9e3cc609996b13454
