FROM ubuntu:16.04

ENV SSH_KEY=$SSH_KEY SSH_IP=$SSH_IP

# Make ssh dir
RUN mkdir /root/.ssh/


# Create id_rsa from string arg, and set permissions

RUN echo "$SSH_KEY" > /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

# Create known_hosts
RUN touch /root/.ssh/known_hosts

# Add git providers to known_hosts
RUN ssh-keyscan "$SSH_IP" >> /root/.ssh/known_hosts

