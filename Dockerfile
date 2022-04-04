FROM python:3.10

WORKDIR /usr/src/docker_pg

COPY ./requirements.txt /usr/src/req.txt
RUN pip install -r /usr/src/requirements.txt

COPY . /usr/src/docker_pg

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

