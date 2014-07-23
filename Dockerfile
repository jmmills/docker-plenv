# Perl Version: 5.20.0

FROM jmmills/plenv-base
MAINTAINER = Jason M. Mills <jmmills@cpan.org>

RUN plenv install $(plenv latest_version)
RUN plenv global $(plenv latest_version)
# clean build directory to reduce size
RUN rm -rfv /.plenv/build/* 

ONBUILD RUN plenv install-cpanm

CMD ["/bin/bash", "-l"]
