---
title: "Setup"
description: "Setting up the VPN client."
lead: "Setting up the VPN client."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "vpn"
weight: 200
toc: true
---

## Motivation

The CCB cluster is accessible only from the University campus network.

When your device is not directly connected to the University campus network
(e.g., when you are working from home or travelling), the VPN Service allows
you to access the University campus network, and thus the CCB cluster.

The web page [Virtual private network (VPN) →][oxford-vpn] provide the latest information
about requirements and instructions to set up recommended VPN clients.
Most of the sections below refer to instructions on that page.

## Set up a VPN client

On the web page [Virtual private network (VPN) →][oxford-vpn], expand the section
'Setup Cisco AnyConnect'.

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

<p align='center'><i>Cisco AnyConnect VPN client.</i></p>

## Connection

On the web page [Virtual private network (VPN) →][oxford-vpn], expand the section
'Connect using Cisco AnyConnect'.

The first time that you connect to the University VPN, you must type the
University VPN address in the dropdown menu and click the button 'Connect'.

Subsequently, you can simply select 'University VPN' in the dropdown menu
and click the button 'Connect'.

Then, when prompted, type in your username and password. Then, click 'OK'.

![Cisco AnyConnect - Username and password.](cisco-anyconnect-login-screenshot.png)

<p align='center'><i>Connect using Cisco AnyConnect VPN client.</i></p>

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

<p align='center'><i>Cisco AnyConnect menu while connected.</i></p>

In the menu, click 'Disconnect'.

You are now disconnected from the University campus network and using only
your own internet connection again.

## Further reading

On the web page [Virtual private network (VPN) →][oxford-vpn], you can find useful information
organised in various sections.

The section 'FAQ' details frequently asked questions and answers.

The section 'Setup an alternate VPN client' details alternatives to the
Cisco AnyConnect VPN client.

<!-- Link definitions -->

[oxford-vpn]: https://help.it.ox.ac.uk/vpn
