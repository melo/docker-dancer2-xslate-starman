FROM melopt/perl-alt:latest-build AS builder

COPY cpanfile* /stack/
RUN cd /stack && pdi-build-deps --stack


FROM melopt/perl-alt:latest-runtime

COPY --from=builder /stack/ /stack/

