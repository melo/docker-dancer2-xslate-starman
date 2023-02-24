ARG base="perl-latest"
FROM melopt/perl-alt:$base-build AS builder

COPY cpanfile* /stack/
RUN cd /stack && pdi-build-deps --stack


FROM melopt/perl-alt:$base-runtime

COPY --from=builder /stack/ /stack/
