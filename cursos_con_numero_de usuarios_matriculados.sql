SELECT course.id, fullname, COUNT(*) FROM prefix_course as course
	JOIN prefix_enrol as en on en.courseid = course.id
	JOIN prefix_user_enrolments as ue ON ue.enrolid = en.id
	JOIN prefix_user as usr ON ue.userid = usr.id
GROUP BY course.id