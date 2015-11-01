FROM alpine:3.2

RUN apk add --update python py-pip \
 && pip install goobook            \
 &&  rm -rf /var/cache/apk/*

VOLUME ["/.goobook_cache", "/.goobook_auth.json"]
ENTRYPOINT ["goobook"]
