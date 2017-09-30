\set table_size 10000000
\set range_size 100
\set id1 trunc(random() * :table_size - 1)
\set id2 trunc(random() * :table_size - 1)
\set id3 trunc(random() * :table_size - 1)
\set id4 trunc(random() * :table_size - 1)
\set id5 trunc(random() * :table_size - 1)
\set id6 trunc(random() * :table_size - 1)
\set id7 trunc(random() * :table_size - 1)
\set id8 trunc(random() * :table_size - 1)
\set id9 trunc(random() * :table_size - 1)
\set id10 trunc(random() * :table_size - 1)
\set r1l trunc(random() * :table_size - 1)
\set r1u :r1l + :range_size
\set r2l trunc(random() * :table_size - 1)
\set r2u :r2l + :range_size
\set r3l trunc(random() * :table_size - 1)
\set r3u :r3l + :range_size
\set r4l trunc(random() * :table_size - 1)
\set r4u :r4l + :range_size
SELECT c FROM sbtest WHERE id = :id1;
SELECT c FROM sbtest WHERE id = :id2;
SELECT c FROM sbtest WHERE id = :id3;
SELECT c FROM sbtest WHERE id = :id4;
SELECT c FROM sbtest WHERE id = :id5;
SELECT c FROM sbtest WHERE id = :id6;
SELECT c FROM sbtest WHERE id = :id7;
SELECT c FROM sbtest WHERE id = :id8;
SELECT c FROM sbtest WHERE id = :id9;
SELECT c FROM sbtest WHERE id = :id10;
SELECT c FROM sbtest WHERE id BETWEEN :r1l AND :r1u;
SELECT SUM(K) FROM sbtest WHERE id BETWEEN :r2l AND :r2u;
SELECT c FROM sbtest WHERE id BETWEEN :r3l AND :r3u ORDER BY c;
SELECT DISTINCT c FROM sbtest WHERE id BETWEEN :r4l AND :r4u;
