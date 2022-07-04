* MEC server port forwarding  
`sudo ip netns exec qrouter-5d6c68a1-ab10-48b3-bc0d-bf5d110d44e8 iptables -t nat -A neutron-l3-agent-PREROUTING -p tcp --dport 9160 -d 172.18.71.12 -i qg-d3ca26f7-9a -j DNAT --to-destination 192.168.10.155:9001`  
`sudo ip netns exec qrouter-5d6c68a1-ab10-48b3-bc0d-bf5d110d44e8 iptables -t nat -A neutron-l3-agent-PREROUTING -p tcp --dport 9161 -d 172.18.71.12 -i qg-d3ca26f7-9a -j DNAT --to-destination 192.168.10.155:8866`

* oenstack
不同架構首頁的位址不一樣  
<http://172.18.66.149/horizon>  
<http://172.18.66.149/auth/login/?next=>  
網域: default  
帳號: admin  
密碼: openstack

* attach usb to Face++ vm
```xml
user@user-aio-for-jenkins:~$ cat usb1.xml
<hostdev mode='subsystem' type='usb' managed='yes'>
       <source>
          <address type='usb' bus='1' device='4'/>
       </source>
</hostdev>
```
  
`$ virsh attach-device instance-000003d9 /home/user/usb1.xml`