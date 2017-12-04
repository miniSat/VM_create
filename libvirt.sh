#!/bin/sh

log_file=lvinstall.log

#function installation for fedora
function for_fedora { 
	dnf install qemu-kvm qemu-img virt-manager libvirt libvirt-python libvirt-client virt-install virt-viewer -y
} 

function for_centos { 
	yum -y install qemu-kvm qemu-img virt-manager libvirt libvirt-python libvirt-client virt-install virt-viewer -y
} 


distro=$(lsb_release -i | cut -f 2)
if [ "$distro" == "Fedora" ]
	then
	for_fedora
elif [ "$distro" == "CentOS" ]
	then 
	for_centos
fi
