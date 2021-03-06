FROM debian:buster
MAINTAINER Patrik Wallström <pawal@amplitut.de>
RUN apt-get update && apt-get install -y build-essential libfile-slurp-perl libjson-pp-perl liblist-moreutils-perl libio-socket-inet6-perl libmodule-find-perl libmoose-perl libfile-sharedir-perl libhash-merge-perl libreadonly-perl libmail-rfc822-address-perl libintl-xs-perl libssl-dev libdevel-checklib-perl libtest-fatal-perl libtie-simple-perl libio-capture-perl libgeography-countries-perl libidn11-dev gettext libmoosex-getopt-perl libtext-reflow-perl libmodule-install-perl libnet-interface-perl
RUN cpan -i Zonemaster::LDNS
RUN cpan -i Zonemaster::Engine
RUN cpan -i Zonemaster::CLI
