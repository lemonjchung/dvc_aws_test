FROM python:3.8-slim-buster
USER 0
WORKDIR /src
COPY . .
RUN pip3 install 'dvc[s3]' 
CMD ["dvc", "pull", "-r", "test"]
USER 1001
EXPOSE 8080

