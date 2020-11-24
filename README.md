This project is intended to build an Alpine VM. This can be used to help layout plans for building an Alpine docker container. Usually, trying to spin up a docker container and running iteractive shells to create the steps required for the Dockerfile was taking too long. A work around was to spin up a VM and quickly figure out the steps and then placing them into the Dockerfile sped up the delivery and testing times.

To create the VM run:
```
packer build -only=virtualbox-iso alpine.json
```

This will create both the VirtualBox appliance and a vagrant box. The default login is:
username: vagrant
password: vagrant

To install the vagrant box run the following command:
```
vagrant box add Alpine ./packer_virtualbox-iso_virtualbox.box
```

Once the vagrant box is running you can utilize the box by using SSH or create scripts and use the Vagrant provision methods to iteratively add functionality and testing.