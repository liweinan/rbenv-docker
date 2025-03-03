FROM alpine:3.9
RUN apk add git
COPY rbenv-setup /rbenv-setup
# install rbenv
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN /rbenv-setup
# install rbenv-install
RUN mkdir -p "$(rbenv root)"/plugins
RUN git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

