# Docker Base Image for Using Tor Transparently
[![](https://github.com/seiferma/Docker_TorBase-Transparent/actions/workflows/docker-publish.yml/badge.svg?branch=main)](https://github.com/seiferma/Docker_TorBase-Transparent/actions?query=branch%3Amain+)
[![](https://img.shields.io/github/issues/seiferma/Docker_TorBase-Transparent.svg)](https://github.com/seiferma/Docker_TorBase-Transparent/issues)
[![](https://img.shields.io/github/license/seiferma/Docker_TorBase-Transparent.svg)](https://github.com/seiferma/Docker_TorBase-Transparent/blob/main/LICENSE)

This image serves as base image for other images that would like to redirect all traffic through the TOR network. Thereto, this image establishes a transparent proxy and forces all traffic to go through TOR. Consequently, only IPv4 traffic for TCP and DNS requests are possible.

In order to run this (and derived) images, you have to ensure that
* the module nft_redir is loaded in the host system
* the container is started with capabilities NET_ADMIN and NET_RAW

The image is available as `quay.io/seiferma/tor-base-transparent`. View all available tags on [quay.io](https://quay.io/repository/seiferma/tor-base-transparent?tab=tags).
