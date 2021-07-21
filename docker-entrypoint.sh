#!/bin/sh

EXPORT SOURCE_ACCESS_KEY="e0e6b8fee5fe414f952d9e19d834353f"

EXPORT SOURCE_SECRET_KEY="644b901264ad5e213f3a8efdc460d342473c3c86cc041143"

EXPORT DESTINATION_ACCESS_KEY="6e7934a1a81940179fabb37c6d6e8f78"

EXPORT DESTINATION_SECRET_KEY="f7eaa795ae7c3547105cef22ec1019d50ed3c50f5f919eb7"

/usr/bin/mc config host add source_acct https://s3.private.eu-gb.cloud-object-storage.appdomain.cloud e0e6b8fee5fe414f952d9e19d834353f 644b901264ad5e213f3a8efdc460d342473c3c86cc041143 --api "s3v4"

/usr/bin/mc config host add destination_acct https://s3.private.eu-gb.cloud-object-storage.appdomain.cloud 6e7934a1a81940179fabb37c6d6e8f78 f7eaa795ae7c3547105cef22ec1019d50ed3c50f5f919eb7 --api "s3v4"

/usr/bin/mc cp --recursive source_acct/rclone-sync-test-source/ destination_acct/rclone-sync-test-target