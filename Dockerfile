FROM davenuman/bowline-centos
MAINTAINER David Numan david.numan_at_civicactions.com

# Install OpenSCAP
RUN yum -y install openscap openscap-scanner xml-common scap-security-guide

# Set a custom entrypoint.
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
