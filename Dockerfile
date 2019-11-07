FROM python:3.7-alpine

COPY requirements.txt /
RUN pip install -r requirements.txt

COPY start /start
RUN sed -i 's/\r//' /start
RUN chmod +x /start

COPY src/ /app
WORKDIR /app

ENTRYPOINT [ "/start" ]
