SELECT usr.firstname, usr.lastname, usr.email, fld.name, dta.data
FROM  mdl_user usr
    LEFT JOIN mdl_user_info_data AS dta on dta.userid = usr.id
    LEFT JOIN mdl_user_info_field AS fld on fld.id = dta.fieldid
