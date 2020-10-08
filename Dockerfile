# Container image that runs your code
FROM vinay0410/tectonic-image:latest

RUN apt update -y && apt install fonts-ipafont -y

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
