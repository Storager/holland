SELECT ROUND(10+((200-10)/TIMESTAMPDIFF(HOUR,'2015-05-31 00:00:00','2015-07-30 00:00:00')*TIMESTAMPDIFF(HOUR,NOW(),'2015-07-30 00:00:00')),2);