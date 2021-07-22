SELECT id, username, FROM_UNIXTIME(`lastlogin`) AS days
FROM prefix_user
WHERE DATEDIFF( NOW(), FROM_UNIXTIME(`lastlogin`) ) < 7