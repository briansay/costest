FROM minio/mc
ENV SOURCE_ACCESS_KEY='e0e6b8fee5fe414f952d9e19d834353f'
ENV SOURCE_SECRET_KEY='644b901264ad5e213f3a8efdc460d342473c3c86cc041143'
ENV DESTINATION_ACCESS_KEY='6e7934a1a81940179fabb37c6d6e8f78'
ENV DESTINATION_SECRET_KEY='f7eaa795ae7c3547105cef22ec1019d50ed3c50f5f919eb7'
COPY docker-entrypoint.sh /
# RUN chmod +x /app/src/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]