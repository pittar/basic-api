FROM registry.access.redhat.com/ubi9/python-39:1

COPY requirements.txt .

RUN pip install --upgrade pip --no-cache-dir && \
    pip install -r requirements.txt --no-cache-dir

EXPOSE 8000

COPY main.py .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

