FROM melopt/alpine-perl-devel AS builder

COPY cpanfile* /stack/
RUN cd /stack && build-perl-deps


FROM melopt/alpine-perl-runtime

ENV PERL5LIB=/app/local/lib/perl5:/stack/local/lib/perl5
WORKDIR /app

COPY --from=builder /stack /stack/

