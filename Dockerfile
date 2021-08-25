FROM python:3.9-slim-buster
COPY /app /app
WORKDIR /app
RUN python -m pip install -r ./requirements.txt
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]
EXPOSE 5000