# Commands to run Starburst Trino
export MINIO_ACCESS_KEY := $(shell jq -r '.MINIO_ACCESS_KEY' config.json)
export MINIO_SECRET_KEY := $(shell jq -r '.MINIO_SECRET_KEY' config.json)
export AWS_ENDPOINT := $(shell jq -r '.AWS_ENDPOINT' config.json)
export METASTORE_DB_USERNAME := $(shell jq -r '.METASTORE_DB_USERNAME' config.json)
export METASTORE_DB_PASSWORD := $(shell jq -r '.METASTORE_DB_PASSWORD' config.json)
export METASTORE_MAX_DB_CONN_POOL_SIZE := $(shell jq -r '.METASTORE_MAX_DB_CONN_POOL_SIZE' config.json)
export METASTORE_WAREHOUSE_DIR := $(shell jq -r '.METASTORE_WAREHOUSE_DIR' config.json)
export METASTORE_DB_URL := $(shell jq -r '.METASTORE_DB_URL' config.json)
export THRIFT_URL := $(shell jq -r '.THRIFT_URL' config.json)
export PGPORT := $(shell jq -r '.PGPORT' config.json)
export PGUSER := $(shell jq -r '.PGUSER' config.json)
export PGPASSWORD := $(shell jq -r '.PGPASSWORD' config.json)
export KEYSTORE_PATH := $(shell jq -r '.KEYSTORE_PATH' config.json)
export KEYSTORE_PASS := $(shell jq -r '.KEYSTORE_PASSWORD' config.json)
export TRINO_PORT := $(shell jq -r '.TRINO_PORT' config.json)
export TRINO_S_PORT := $(shell jq -r '.TRINO_S_PORT' config.json)
export PASSWORD_FILE := $(shell jq -r '.PASSWORD_FILE' config.json)
export SNOWFLAKE_USER := $(shell jq -r '.SNOWFLAKE_USER' config.json)
export SNOWFLAKE_PASS := $(shell jq -r '.SNOWFLAKE_PASS' config.json)
export SNOWFLAKE_ACCOUNT := $(shell jq -r '.SNOWFLAKE_ACCOUNT' config.json)
export SNOWFLAKE_URL := $(shell jq -r '.SNOWFLAKE_URL' config.json)
export SNOWFLAKE_DATABASE := $(shell jq -r '.SNOWFLAKE_DATABASE' config.json)
export SNOWFLAKE_ROLE := $(shell jq -r '.SNOWFLAKE_ROLE' config.json)
export SNOWFLAKE_WAREHOUSE := $(shell jq -r '.SNOWFLAKE_WAREHOUSE' config.json)


up:
	docker-compose up | tee startup.txt

down:
	docker-compose down

pg:
	docker-compose run --rm metastoredb

metastore:
	docker-compose run --rm metastore

attach:
	docker exec -it trino bash
