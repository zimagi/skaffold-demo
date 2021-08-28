FROM python:3.9.5-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .
COPY tests.py .

ENTRYPOINT ["python"]
CMD ["app.py", "runserver"]
