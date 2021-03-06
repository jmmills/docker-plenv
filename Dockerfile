FROM jmmills/plenv-base
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
RUN plenv install $(plenv latest_version)
RUN plenv global $(plenv latest_version)
RUN rm -rfv /.plenv/build/* 
RUN plenv install-cpanm
ONBUILD ENV PATH $PATH:/.plenv/shims/
CMD ["/bin/bash", "-l"]
