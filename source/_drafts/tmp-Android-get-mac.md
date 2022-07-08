---
title: tmp_Android_get_mac
abbrlink: 4da52d3a
tags:
---
Get Mac Address
===

```
/**
 * Returns MAC address of the given interface name
 * @param interfaceName eth0, wlan0 or NULL=use first interface
 * @return  mac address
 */
public static String getMacAddress(String interfaceName) {
    try {
        List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());
        for (NetworkInterface intf : interfaces) {
            if (interfaceName != null) {
                if (!intf.getName().equalsIgnoreCase(interfaceName)) continue;
            }
            byte[] mac = intf.getHardwareAddress();
            if (mac==null) return "";
            StringBuilder buf = new StringBuilder();
            for (int idx=0; idx0) buf.deleteCharAt(buf.length()-1);
            return buf.toString();
        }
    } catch (Exception e) {
        e.printStackTrace();
        return "00:00:00:00:00:00";
    }
    return "00:00:00:00:00:00";
}
```