FROM odoo:17.0

USER root 

COPY ./requirements.txt /tmp/requirements.txt
RUN apt update -y && \
	apt install -y && \
	pip3 install -r /tmp/requirements.txt --no-cache-dir 

USER odoo 


