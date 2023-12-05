FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app

CMD ["gunicorn", "--config", "gunicorn_conf.py", "app.main:app"]
