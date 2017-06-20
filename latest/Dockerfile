FROM tetraweb/php:latest

MAINTAINER Martin Kluska <martin@kluska.cz>


########################################################################################################################
##### Python with glue depedencies
########################################################################################################################

RUN apt-get update && apt-get install -yq \
        python-dev python-pip python-setuptools \
        libffi-dev libxml2-dev libxslt1-dev \
        libtiff5-dev libjpeg62-turbo-dev zlib1g-dev libfreetype6-dev \
        liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk

########################################################################################################################
##### Glue
########################################################################################################################

RUN  pip install glue
