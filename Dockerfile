FROM node:14

RUN npm install -g cognito-backup

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

ENV AWS_ACCESS_KEY_ID="" AWS_SECRET_ACCESS_KEY="" AWS_REGION="" POOL_ID="", BUCKET_NAME="", BUCKET_PATH=""

WORKDIR /app

COPY backup.sh .
RUN chmod +x backup.sh

CMD [ "/bin/bash", "backup.sh" ]
