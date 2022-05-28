# env-creds-scripted
Testing env vars creds for scripted pipeline


docker build --build-arg USER=${NITIN_CREDS_USR} --build-arg PASSWD=${NITIN_CREDS_PSW} -t docker-image-nitin .

docker build --build-arg USER=nitin --build-arg PASSWD=pass -t docker-image-nitin .
