#!/bin/bash

sudo service ntp stop
sudo ntpdate pool.ntp.org
sudo service ntp start
