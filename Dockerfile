FROM python:3.7
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
CMD ["gunicorn", "-c", "gunicorn.conf.py", "app:app"]
