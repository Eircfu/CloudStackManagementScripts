
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do

        #scp runLinux.sh nudt_nina@$h:.

	#scp selinuxConfig root@$h:.

	#ssh root@$h 'rm /etc/selinux/config;mv selinuxConfig /etc/selinux'

        #scp ntp.conf root@$h:/etc/
	
	scp -r ~/cloudstack/CloudStack-non-OSS-140/ root@$h:.
	
	#scp idmapd.conf root@$h:/etc/

	#	scp libvirtd root@$h:/etc/sysconfig/

	#scp libvirtd.conf root@$h:/etc/libvirt/

       #scp qemu.conf root@$h:/etc/libvirt/



	echo $h

done
