delete casinocrm.beds where id >= 2000;
insert into casinocrm.beds(id, description) values (2000, 'bbbs1');  
insert into casinocrm.beds(id, description) values (2001, 'bbbs2');  
update casinocrm.beds set description = 'ddd' || id where id >= 2000;
commit;
begin DBMS_OUTPUT.put_line('------------------------------------'); end;