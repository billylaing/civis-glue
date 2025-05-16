FROM amazon/aws-glue-libs:5

RUN python3 -m pip install civis

CMD ["/bin/bash"]
