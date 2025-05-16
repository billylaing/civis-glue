FROM amazon/aws-glue-libs:5
USER hadoop

RUN python3 -m pip install civis

CMD ["python3"]
