FROM python:3.9-slim-buster
WORKDIR /app
COPY . /app



# RUN apt-get update && apt-get install libsm6 libxext6 unzip -y && pip install -r requirements.txt
# RUN apt-get updatess
# RUN pip install --no-cache-dir --upgrade -r requirements.txt
# RUN apt update -y && apt install awscli -y
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "main.py"]