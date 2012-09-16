A simple utility on top of OpenVPN's easy-rsa that creates a zip bundle of all needed files to connect to OpenVPN server for the 3 Major OSes. A sample server configuration is included.

OpenVPN-Client-Generator

https://github.com/korylprince/OpenVPN-Client-Generator

#Installing#

This assumes you are using the easy-rsa method of creating clients where /etc/openvpn/easy-rsa exists.

An example of this is https://help.ubuntu.com/community/OpenVPN

Create the directory /etc/openvpn/clients and optionally place inside of it "win.exe" and "mac.dmg", OpenVPN clients for those Operating systems. I suggest using http://openvpn.net/index.php/download/community-downloads.html and http://code.google.com/p/tunnelblick/ .

This utility assumes you will just use your linux distributions version of openvpn, so it doesn't include an option to include a client for linux.

/etc/openvpn/clients/server.conf must exist with the format given below.

Copy openvpn\_gen to your PATH if you wish to call the utility from anywhere.

Included is a server configuration you can use to go along with the clients. It is set up in Bridged mode.

#Usage#

    openvpn_gen -h
    Usage: openvpn_gen [-w, -m, -l] [options] client
        --help, -h  Display this help message
        -w  Create a Windows bundle
        -m  Create a Mac bundle
        -l  Create a Linux bundle

        client is the name of the key you wish to create. It is also the name you use to revoke a client
    You must create a settings file at /etc/openvpn/clients/server.conf in the following format:

    server=server
    port=port
    proto=proto

    port is optional and will default to 1194. proto may be tcp or udp, is optional and will default to udp.
    server is mandatory and may be a hostname or ip address

#Caveats#

This works on Ubuntu 12.04 Server. I can't promise that it will work on anything else. I also can't promise it won't mess things up on your system. No reason it would though.

#License#

Code is Copyright 2012 Kory Prince (korylprince at gmail dot com)
This code is Public Domain. There is no warranty. Do whatever you want. It'd be nice if you sent me an email telling me someone used it though.
