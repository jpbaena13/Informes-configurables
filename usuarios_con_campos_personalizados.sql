SELECT usr.firstname, usr.lastname, usr.email, fld.name, dta.data
FROM  prefix_user usr
    LEFT JOIN prefix_user_info_data AS dta on dta.userid = usr.id
    LEFT JOIN prefix_user_info_field AS fld on fld.id = dta.fieldid
