FROM python:3.6.1-alpine
RUN apk update \
  && apk add \
    build-base \
    postgresql \
    postgresql-dev \
    libpq
RUN mkdir /usr/src/ devops07t2tra
WORKDIR /usr/src/ devops07t2tra
COPY ./requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
COPY . .
