FROM alpine:3.8
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD [ "100", "5000" ]
