# base Docker image that we will build on
FROM python:3.9.1

# set up our image by installing prerequisites; pandas and Jupyter in this case
RUN pip install pandas jupyter sqlalchemy psycopg2 

# set up the working directory inside the container
WORKDIR /app

# copy the script and the CSV file to the container
COPY data.ipynb data.ipynb
# COPY /home/vincent/Downloads/SCFP2019.csv /home/vincent/Downloads/SCFP2019.csv
COPY SCFP2019.csv .

# define what to do first when the container runs
ENTRYPOINT ["jupyter", "nbconvert", "--execute", "--to", "notebook", "--inplace", "data.ipynb"]

