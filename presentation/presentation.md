class: center, middle

# Virtual Private Servers
_alex chojnacki_

---

# What does Wikipedia say about it?

> _"A VPS runs its own copy of an operating system, and customers have superuser-level access to that operating system instance, so they can install almost any software that runs on that OS. For many purposes they are functionally equivalent to a dedicated physical server, and being software-defined, are able to be much more easily created and configured." -- Wikipedia_

???

1. How is a VPS similar to our VirtualBox images from this description?
1. Are there any advantages we can think of?

Alike
- disposable
- can install whatever we want

Different
- Easily (automajically) configurable
- We can pay $$$ to get better resources
- Create and destroy instances as they are needed
- There's no GUI!


--

# So what's all the fuss about?

### Focus on the advantages we just talked about.

* They are easily configurable ...
* We can make as many as we want ...
* We can make them as powerful as we need ...
* We can create and destroy them instantly ...

---
class: center, middle

![Netflix Traffic](http://www.internetphenomena.com/wp-content/uploads/2010/10/Netflix-Time-of-Day.png)

---
class: center, middle

# What tools are used for Virtual Private Servers?

---

# Vagrant

* A "headless" VM
* Provisioning support built-in
* Often times more convenient without the GUI

```bash
thealex :: $ vagrant init hashicorp/precise64
...
thealex :: $ vagrant up
...
thealex :: $ vagrant ssh
```

???
_Why is provisioning cool?_
What if I want to make 50 VMs at once and they all need the same config?

---

# Docker

* A "lightweight" VM
* Quicker than vagrant, but much less contained
    - Where vagrant/virtualbox virtualise the hardware, docker utilizes a clever namespace trick in order to run processes in 'isolated' environments while avoiding any hardware virtualisation.
* Rich ecosystem of third-party images and environments

```
docker run -it ubuntu bash
```


--

## AWS, Linode, DigitalOcean, etc.

* Disposable servers in the cloud!

---


# Alright, so what can I do with them?

--

* Host personal website/app
* Rent a more powerful PC

--

.center[_Use your imagination!_]
.center[![spongebro](https://49.media.tumblr.com/fb00dfdbdcb89a8eb47e96ed4632ae5c/tumblr_o50wufdLRn1v4167qo1_500.gif)]

???

### Card Demo
http://104.131.102.44:3000/

### Neural Style
Fill in!
