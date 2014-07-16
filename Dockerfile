# Perl Version: 5.20.0

FROM jmmills/plenv-base
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
RUN plenv install_latest

# clean build directory to reduce size
RUN rm -rfv /.plenv/build/* 

CMD ["/bin/bash", "-l"]
