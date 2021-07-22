SELECT usr.firstname, usr.lastname, usr.email, crs.fullname AS course, cmpl.userid AS completed
FROM prefix_user usr
	LEFT JOIN prefix_user_enrolments AS ue ON ue.userid = usr.id
    LEFT JOIN prefix_enrol AS en ON en.id = ue.enrolid
    LEFT JOIN prefix_course AS crs ON crs.id = en.courseid
    LEFT JOIN prefix_course_categories cat ON cat.id = crs.category
    LEFT JOIN prefix_course_completions AS cmpl ON cmpl.userid = usr.id AND cmpl.course = crs.id
WHERE cat.id = 5