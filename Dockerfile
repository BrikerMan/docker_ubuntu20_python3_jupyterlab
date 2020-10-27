ARG DOCKER_TAG

FROM brikerman/ubuntu20.04_python3:$DOCKER_TAG

WORKDIR /code

RUN pip install jupyter -U && pip install jupyterlab
RUN echo $PYTHON_VERSION
RUN env

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]