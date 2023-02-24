# Dancer2 + XSlate + Starman

This image provides the basic setup for [Dancer2](https://metacpan.org/pod/Dancer2)
using the [Text::Xslate](https://metacpan.org/pod/Text::Xslate) template. The
[Starman](https://metacpan.org/pod/Starman) HTTP server is also present.

Available tags:
  * `latest`: based on `melopt/perl-latest`, which is based on the Perl official Docker image;
  * `perl-latest`: same as `latest`;
  * `alpine-latest`: based on `melopt/alpine-latest`, based on `alpine:3.17`;
  * `alpine-next` / `alpine-edge`: based on `melopt/alpine-edge`, using `alpine:edge`.

Follow the template for a `Dockerfile` from
[melopt/perlalt](https://hub.docker.com/r/melopt/perlalt)
and you'll be fine.
