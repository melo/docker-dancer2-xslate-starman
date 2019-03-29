FROM melopt/alpine-perl-devel AS builder

COPY cpanfile* /stack/
RUN cd /stack && build-perl-deps


FROM melopt/alpine-perl-runtime

ENV PERL5LIB=/app/lib:/app/local/lib/perl5:/stack/local/lib/perl5
ENV PATH=/app/bin:/app/local/bin:/stack/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

WORKDIR /app

COPY --from=builder /stack /stack/

