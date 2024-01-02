FROM python:3.13.0a2-alpine3.19
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
