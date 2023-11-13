FROM python:3.9-slim-buster
WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y libmagic-dev
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "main.py"]