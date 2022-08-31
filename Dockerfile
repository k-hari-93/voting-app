FROM python:3.8.10-alpine

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./src /src

WORKDIR /src

ENTRYPOINT ["python"]

CMD ["app.py"]