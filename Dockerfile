FROM python:3.13-bookworm

RUN python3 -m pip install boto3 awswrangler pyiceberg pandas civis

CMD ["python3"]
