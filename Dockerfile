FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]


#default port is 5000. if want to run container in localhost 3000 do CLI
#docker run -d -p 3000:5000 <IMAGE ID>-- run in localhost:3000
#docker run -d -p 5000:5000 <IMAGE ID> -- run in localhost:5000