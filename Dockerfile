# VERISON 0.99.0

FROM jmmills/plenv-base
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
RUN plenv install_latest
CMD ["/bin/bash", "-l"]
