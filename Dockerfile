FROM python:3.8

WORKDIR ./ 

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./ app

CMD ["gunicorn", "--config", "gunicorn_conf.py", "main:app"]
