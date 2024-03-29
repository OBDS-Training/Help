---
title: "VPN setup"
description: "The CCB cluster is accessible only from the University campus network. A VPN client is necessary to use the CCB services while travelling or working from home."
lead: "The CCB cluster is accessible only from the University campus network. A VPN client is necessary to use the CCB services while travelling or working from home."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "first-steps"
weight: 102
toc: true
---

## Motivation

When your device is not directly connected to the University campus network
(e.g., when you are working from home or travelling), the VPN Service allows
you to access the University campus network, and thus the CCB cluster.

The web page [Virtual private network (VPN) →][oxford-vpn] provide the latest information
about requirements and instructions to set up recommended VPN clients.
Most of the sections below refer to instructions on that page.

## Set up a VPN client

On the web page [Virtual private network (VPN) →][oxford-vpn], expand the section
'How to setup Cisco AnyConnect'.

Click on the operating system for your device and follow the instructions.

The first time that you use the Cisco AnyConnect VPN client, the instructions
will lead you to connect to the VPN using your username and password.

Subsequently, your device may remember your username, but you will always
be prompted for your password.

## The Cisco AnyConnect VPN client

Once you have installed the Cisco AnyConnect VPN client and set up the
University VPN profile during your first connection, the VPN client should
display 'University VPN' in the dropdown menu.

![Cisco AnyConnect.](cisco-anyconnect-screenshot.png)

## Connection

On the web page [Virtual private network (VPN) →][oxford-vpn], expand the section
'Connect using Cisco AnyConnect'.

The first time that you connect to the University VPN, you must type the
University VPN address in the dropdown menu and click the button 'Connect'.

Subsequently, you can simply select 'University VPN' in the dropdown menu
and click the button 'Connect'.

Then, when prompted, type in your username and password. Then, click 'OK'.

![Cisco AnyConnect - Username and password.](cisco-anyconnect-login-screenshot.png)

You are now connected to the University campus network, giving you access to the
CCB cluster.

## Disconnection

On the web page [Virtual private network (VPN) →][oxford-vpn], expand the section
'Disconnect using Cisco AnyConnect'.

Your device will use the University VPN service until you disconnect.

While connected, you will see an icon in your computer's system tray
<img src='cisco-icon.png' height='30px'>.

Click on it to reveal the application's menu.

![Cisco AnyConnect - Application menu while connected.](cisco-connected-menu.png)

In the menu, click 'Disconnect'.

You are now disconnected from the University campus network and using only
your own internet connection again.

## Further reading

You can find useful information organised in various sections on the page
[Virtual private network (VPN) →][oxford-vpn].

The section 'FAQ' details frequently asked questions and answers.

The section 'Setup an alternate VPN client' details alternatives to the
Cisco AnyConnect VPN client.

<!-- Link definitions -->

[oxford-vpn]: https://help.it.ox.ac.uk/vpn
