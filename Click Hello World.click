define($src_ip_addr 192.168.1.1, $dest_ip_addr 192.168.1.2)
define($src_mac_addr 12:5f:21:75:26:d6, $dest_mac_addr 22:d8:5e:0f:70:1a)
define($dev1 veth1, $dev2 veth2)

RatedSource(DATA "Hello", RATE 1, LIMIT 10, STOP true)
		->Print("Source DATA")
		->IPEncap(4, $src_ip_addr, $dest_ip_addr)
		->Print("Finish IP Encap")
		->EtherEncap(0x0800, $src_mac_addr, $dest_mac_addr)
		->Print(Sending)
		->Queue
		//->Print("Finish Ether Encap, sending packet to dev2")
		->ToDevice($dev1)

FromDevice($dev1)	
		->Print("Dev1 Receive Packets")
		->Discard;
