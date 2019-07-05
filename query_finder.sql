show processlist;

-------

SELECT 
	pl.id 'PROCESS ID'
	,trx.trx_started
	,esh.event_name 'EVENT NAME'
	,esh.sql_text 'SQL'
    ,pl.info
FROM information_schema.innodb_trx AS trx
INNER JOIN information_schema.processlist pl 
	ON trx.trx_mysql_thread_id = pl.id
INNER JOIN performance_schema.threads th 
	ON th.processlist_id = trx.trx_mysql_thread_id
INNER JOIN performance_schema.events_statements_history esh 
	ON esh.thread_id = th.thread_id
WHERE trx.trx_started < CURRENT_TIME - INTERVAL 5 SECOND
  AND pl.user <> 'system_user'
ORDER BY esh.EVENT_ID;

-- Encontrar consultas de larga ejecución en MySQL

SELECT id,state,command,time,replace(info,'\n','<lf>')
FROM information_schema.processlist
WHERE command <> 'Sleep' 
AND info NOT LIKE '%PROCESSLIST%'
ORDER BY time DESC LIMIT 50;

--

SELECT *FROM performance_schema.threads

-- All queries taking longer than 20 seconds

SELECT ID, INFO FROM information_schema.processlist WHERE DB='TRANSPORTES' and COMMAND='Query' AND TIME > 5

-- 

SELECT 
    CONCAT('KILL ', trx.trx_mysql_thread_id) kill_statement,
    trx.trx_mysql_thread_id thd_id,
    ps.user,
    ps.host,
    trx.trx_query
FROM
    INFORMATION_SCHEMA.INNODB_TRX trx
        JOIN
    INFORMATION_SCHEMA.PROCESSLIST ps ON trx.trx_mysql_thread_id = ps.id
WHERE
    (UNIX_TIMESTAMP() - UNIX_TIMESTAMP(trx.trx_started)) > 5
        AND user != 'system_user';