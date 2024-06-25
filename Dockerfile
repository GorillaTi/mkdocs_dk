FROM python:3.9

RUN apt-get update && \
  apt-get install -y vim && \
  apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD [ "mkdocs", "serve", "-a 0.0.0.0:8000" ]
