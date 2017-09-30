
$ git clone https://github.com/jad21/pg_oltp_bench.git

$ cd pg_oltp_bench

$ apt install  postgresql-server-dev-9.5

$ make USE_PGXS=1

$ sudo make USE_PGXS=1 install

$ psql -c 'create database pgtest;'

$ psql pgtest -c "CREATE EXTENSION pg_oltp_bench;"

$ psql pgtest -f oltp_init.sql

$ pgbench -i pgtest

$ pgbench -c 100 -j 100 -M prepared -f only_read.sql -T 300 -P 1 pgtest

$ pgbench -c 100 -j 100 -M prepared -f write_read.sql -T 300 -P 1 pgtest
