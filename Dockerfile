FROM python:3.13
EXPOSE 8501
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt
COPY image_classification.py .
CMD ["streamlit", "run", "image_classification.py"]
