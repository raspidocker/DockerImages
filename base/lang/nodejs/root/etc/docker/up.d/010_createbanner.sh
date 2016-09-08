#!/usr/bin/env bash
cp /etc/docker/banners/banner.train.inc /etc/docker/banner.inc
echo -e "\nWelcome on Host '$(hostname)'\n" >>/etc/docker/banner.inc
echo ""