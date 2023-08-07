FROM python:3.11-alpine

WORKDIR /reflector
COPY get_reflector.sh /reflector/get_reflector.sh
RUN /reflector/get_reflector.sh

ENTRYPOINT ["python3", "/reflector/reflector.py"]
