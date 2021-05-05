FROM python:3.6

WORKDIR /bookdirectory

COPY pride_and_prejudice.txt ./

COPY HPBTWOS.txt ./

COPY requirements.txt ./

COPY Book_Analysis.ipynb ./

RUN pip3 install -r requirements.txt

RUN pip3 install jupyter

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]