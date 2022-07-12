# Setting up PERN on Fedora 32
PERN stands for PostgreSQL, Express, React and Node.js. This tutorial will show you how to setup the entire PERN stack on Fedora.

## PERN Installation
PostgreSQL is available to install through dnf:
```
sudo dnf install postgresql postgresql-server
```

## Node.js Installation
Node.js can be installed like this:
```
sudo dnf module install nodejs:12
```
:12 is a stream/version of nodejs to see a list of version use the command:
```
dnf module list nodejs
```
Choose which version then replace the number with the version you choosed.

## Configuration
To start up Node.js and PostgreSQL on system startup, you must do the following:
This sets postgresql to run at the start of boot.
```
sudo systemctl enable postgresql.service
```
To set node to run at the start of boot a systemd service file must be created first for Node.js. Create a new file with this line of code:
```
sudo nano /lib/systemd/system/<nameofchoosing>.service
```
In that file copy this script with the apporiate names of your file:
```
[Unit]
Description=<Your services description here>
Documentation=<webserver_dns_name>
After=network.target

[Service]
ExecStart=/usr/sbin/node <path_to_node.js_filename>
Type=simple
User=<username>
Restart=on-failure

[Install]
WantedBy=multi-user.target
```

## Express Installation
Make sure that nodejs is already installed. Here are the steps to set up express:
create a directory for your app
```
mkdir <appname>
```
Change to that directory
```
cd <appname>
```
Run this command in that directory. The command will have a number of things of settings that can be configured. Hit enter to accept the default for all except for ``entry point: (index.js)``
```
npm init
```
The use this command finish the set up:
```
npm install express
```
<img src="clipchamp_snippet.gif" width="400" height="400">
