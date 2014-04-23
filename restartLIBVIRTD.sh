
#!/bin/sh

HOSTS=$1
for h in `cat $HOSTS`; do


	scp libvirtd root@$h:/etc/sysconfig/

	ssh root@$h 'service libvirtd restart'

	#	ssh root@$h 'yum -y install  ganglia-gmond ganglia-gmond-python ganglia-devel libnodeupdown-backend-ganglia;echo route add -net 239.2.11.71 netmask 255.255.255.255 dev eth0 >> /etc/rc.local;route add -net 239.2.11.71 netmask 255.255.255.255 dev eth0;chkconfig --add gmond'

        #scp ntp.conf root@$h:/etc/
	
	#scp ifcfg-cloudbr0 root@$h:/etc/sysconfig/network-scripts/
	
	#scp idmapd.conf root@$h:/etc/

	#scp libvirtd root@$h:/etc/sysconfig/

	#scp libvirtd.conf root@$h:/etc/libvirt/

       #scp qemu.conf root@$h:/etc/libvirt/



	echo $h

done
