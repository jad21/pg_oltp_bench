\set table_size 10000000
\set range_size 100
\setrandom id1 1 :table_size
\setrandom id2 1 :table_size
\setrandom id3 1 :table_size
\setrandom id4 1 :table_size
\setrandom id5 1 :table_size
\setrandom id6 1 :table_size
\setrandom id7 1 :table_size
\setrandom id8 1 :table_size
\setrandom id9 1 :table_size
\setrandom id10 1 :table_size
\setrandom r1l 1 :table_size
\set r1u :r1l + :range_size
\setrandom r2l 1 :table_size
\set r2u :r2l + :range_size
\setrandom r3l 1 :table_size
\set r3u :r3l + :range_size
\setrandom r4l 1 :table_size
\set r4u :r4l + :range_size
\setrandom u1 1 :table_size
\setrandom u2 1 :table_size
\setrandom u3 1 :table_size
\setrandom u4 1 :table_size

BEGIN;
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
UPDATE sbtest SET k = k + 1 WHERE id = :u1;
UPDATE sbtest SET c = sb_rand_str('###########-###########-###########-###########-###########-###########-###########-###########-###########-###########') WHERE id = :u2;
DELETE FROM sbtest WHERE id = :u3;
INSERT INTO sbtest (id, k, c, pad) VALUES (:u3, :u4, sb_rand_str('###########-###########-###########-###########-###########-###########-###########-###########-###########-###########'), sb_rand_str('###########-###########-###########-###########-###########')) ON CONFLICT DO NOTHING;
COMMIT;