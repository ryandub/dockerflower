FROM alpine
RUN apk --update add python py-pip bash
RUN pip install -U pip
RUN pip install flower redis
COPY start.sh /start.sh
RUN chmod +x /start.sh
EXPOSE 5555
CMD ["/start.sh"]
