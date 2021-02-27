# Docker Base Image for Using Tor Transparently

This image serves as base image for other images that would like to redirect all traffic through the TOR network. Thereto, this image establishes a transparent proxy and forces all traffic to go through TOR. Consequently, only IPv4 traffic for TCP and DNS requests are possible.

In order to run this (and derived) images, you have to ensure that
* the module nft_redir is loaded in the host system
* the container is started with capabilities NET_ADMIN and NET_RAW

The image is available via the [Github Container Registry](https://github.com/users/seiferma/packages/container/package/torbase-transparent).
