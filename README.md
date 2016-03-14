# Virtual Private Servers Talk

## Unknowns
* How do you set up a VPS hosted website with domain name?
* Decide interactive vs. slides (or how much to use of both)

## Goals
By the end of this talk, students should understand how to create and use a virtual private server, as well as understand how they are used 'in the cloud'.

* What is a VPS
* How to host your own web services (or personal website) for free/cheap?
* Tools for deploying and managing machine images
* How does all of this use / differ from virtual machines?

* Know what a VPS is.
* Know how to use a person VPS and an enterprise VPS.
    * Digital Ocean vs. Amazon AWS
* Have one or two clearly understood use cases.
    * File Storage (Movies / HD Music)
    * Hosting a personal web site or project.
* VirtualBox vs. Docker vs. Vagrant

## Lesson Plan
This is how we're going to achieve the above goals.

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
