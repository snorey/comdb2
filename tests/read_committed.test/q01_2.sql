delete from t1 where 1
set transaction read commited
begin
insert into t1 (a,b) values (2,1)
insert into t1 (a,b) values (1,2)
insert into t1 (a,b) values (0,4)
select a,b from t1 where b = 4
rollback
