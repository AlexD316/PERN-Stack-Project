# Setting up PERN on Fedora
PERN stands for PostgreSQL, Express, React and Node.js. This tutorial will show you how to setup the entire PERN stack on Fedora.

## PERN Installation
PostgreSQL is available to install through dnf:
``
sudo dnf install postgresql postgresql-server
``

## Node.js Installation
Node.js can be installed like this:
``
sudo dnf module install nodejs:12
``
:12 is a stream/version of nodejs to see a list of version use the command:
``
dnf module list nodejs
``
Choose which version then replace the number with the version you choosed.

## Configuration
To start up Node.js and PostgreSQL on system startup, you must do the following:
``

``

## Express Installation
Make sure that nodejs is already installed. Here are the steps to set up express:
create a directory for your app
``
mkdir <appname>
``
Change to that directory
``
cd <appname>
``
Run this command in that directory. The command will have a number of things of settings that can be configured. Hit enter to accept the default for all except for ``entry point: (index.js)``
``
npm init
``
The use this command finish the set up:
``
npm install express
``

