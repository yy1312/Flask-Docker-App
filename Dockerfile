FROM python:3-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

EXPOSE 3000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "3000"]


## reference from Bernard code