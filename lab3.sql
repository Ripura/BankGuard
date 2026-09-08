create table emp(eid int,name varchar(20),esal int);
insert into emp values(10,'surendra',1000),
(11,'surya',2000),
(12,'karna',3000);
select *from emp;
explain analyze
select *from emp;


select *from emp;
INSERT INTO emp (eid, name, esal)
SELECT
    x,
    'Employee-' || x,
    (20000 + random() * 80000)::int
FROM generate_series(1, 10000) AS x;


select *from emp;
EXPLAIN (ANALYZE ,BUFFERS)
select *from emp where esal>50000;
explain analyze 
select *from emp where esal>60000;
create index id on emp(esal);
EXPLAIN (ANALYZE,BUFFERS)
select *from emp where eid IN(11,12);
create index idx on emp(eid);
select *from emp where esal>20000;

create index idx2 on emp USING HASH(esal);



