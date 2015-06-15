FROM alpine
RUN apk --update add python py-pip
RUN pip install -U pip
RUN pip install flower redis
EXPOSE 5555
CMD ["/usr/bin/celery", "flower"]
