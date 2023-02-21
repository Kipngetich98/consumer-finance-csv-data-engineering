# consumer-finance-csv-data-engineering

docker run -it \
    -e POSTGRES_USER="postgres" \
    -e POSTGRES_PASSWORD="1234" \
    -e POSTGRES_DB="consumer_data" \
    -v $(pwd)/consumer_data_postgres_data:/var/lib/postgresql/data \
    -p 5435:5432 \
    postgres:13


pgcli -h localhost -p 5435 -u postgres -d consumer_data