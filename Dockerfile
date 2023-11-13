FROM python:3.9-slim-buster

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN apt update -y && apt install awscli libmagic-dev -y
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./app /code
# RUN apt-get update && apt-get install -y libmagic-dev

EXPOSE 8501

CMD ["streamlit", "run", "main.py"]