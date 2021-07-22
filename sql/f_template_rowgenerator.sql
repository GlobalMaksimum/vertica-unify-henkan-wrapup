#set($loop_end=$date.whenIs('2021-01-01T00:00:00.000').days * -1) /*Number of dates since first day of year 2021*/

#{foreach}($i in [1.. $loop_end])
insert into  velocity_demo values ($i,$loop_end,sysdate+$i,sysdate+$i);
#{end}