FROM amazon/aws-cli

# FYI: https://docs.aws.amazon.com/ja_jp/systems-manager/latest/userguide/install-plugin-linux.html
RUN curl "https://s3.amazonaws.com/session-manager-downloads/plugin/latest/linux_arm64/session-manager-plugin.rpm" \
  -o session-manager-plugin.rpm \
  && yum install -y ./session-manager-plugin.rpm
