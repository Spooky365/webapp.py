FROM python:3.13.0a2-alpine3.19
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
ENV FLASK_APP=app.py
CMD [ "flask", "run" , "--host=0.0.0.0"]
