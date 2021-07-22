SELECT username, COUNT(*) AS logins, (
    SELECT COUNT(*) FROM prefix_logstore_standard_log WHERE userid = l.userid GROUP BY userid
) AS Activity
FROM prefix_logstore_standard_log AS l JOIN prefix_user AS u ON l.userid = u.id WHERE `action` LIKE '%loggedin%'
GROUP BY userid ORDER BY Activity DESC