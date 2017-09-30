´´´bash
$ git clone https://github.com/postgrespro/pg_oltp_bench.git
$ cd pg_oltp_bench
$ make USE_PGXS=1
$ sudo make USE_PGXS=1 install
$ psql DB -f oltp_init.sql
$ psql DB -c "CREATE EXTENSION pg_oltp_bench;"
$ pgbench -c 100 -j 100 -M prepared -f oltp_ro.sql -T 300 -P 1 DB
$ pgbench -c 100 -j 100 -M prepared -f oltp_rw.sql -T 300 -P 1 DB
´´´
