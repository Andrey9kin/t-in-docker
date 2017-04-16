FROM ruby:2.1.10-alpine

# Install dump init
# Read more here https://github.com/Yelp/dumb-init
ENV DUMB_INIT_VER=1.2.0
RUN apk add --no-cache --virtual .tmp-packeges python python-dev py-pip build-base \
    && echo "dumb-init==1.2.0 --hash sha256:51274b5f8d82846e959b96605a3213eddc462bcb3eaec3bc4ec0b1df5ab14e6d" > requirements.txt \
    && pip install --require-hash -r requirements.txt\
    && apk del .tmp-packeges \
&& rm -f requirements.txt

# Install t https://github.com/sferik/t
RUN apk add --no-cache --virtual .ruby-builddeps build-base && gem install t && apk del .ruby-builddeps

# Create local user to run container
RUN addgroup -g 1000 t && adduser -h /home/t -D -u 1000 -G t -s /bin/sh t 
USER t

# Define entry point
ENTRYPOINT ["dumb-init", "--", "/usr/local/bundle/bin/t"]

