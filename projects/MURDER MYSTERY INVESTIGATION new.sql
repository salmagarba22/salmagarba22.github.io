---Select all from crimecrime_scene_report to see the columns.
SELECT *
from crime_scene_report
-- Select city,type and date from crime_scene_report as stated in the project question.
SELECT *
from crime_scene_report
where city = 'SQL City' AND type = 'murder' and date = 20180115 
--Narrowing down the description column to get our 2 witnesseses information.crime_scene_report
SELECT description
FROM crime_scene_report
where city = 'SQL City' AND type = 'murder' and date = 20180115 
--Select all from Person table to see the column 
SELECT *
FROM person
---select witness 1 details from person
SELECT *, max(address_number) Witness_1
FROM person
WHERE address_street_name = 'Northwestern Dr'
---select witness 2 details from person table
SELECT *
FROM person
WHERE name LIKE 'Annabel%' and address_street_name = 'Franklin Ave'
----select all from Interview table.crime_scene_report
SELECT *
FROM interview
---select witness 1 & 2 ID from Interview table
SELECT *
FROM interview
WHERE person_id = 14887

SELECT *
FROM interview
WHERE person_id = 16731
---select all from get_fit_now_membercrime_scene_report
SELECT *
FROM get_fit_now_member
---select membership number and membership status from get fit get_fit_now_member (Witness 1)
SELECT *
FROM get_fit_now_member
WHERE ID LIKE '48Z%' AND membership_status = 'gold'
--select all from driversdrivers_license
SELECT *
from drivers_license
where plate_number like 'H42W%' 
--select all from get_fitget_fit_now_check_in
SELECT *
from get_fit_now_check_in
where check_in_date = 20180109 and membership_id like '48Z%'
--select all from facfacebook_event_checkin
SELECT *
FROM facebook_event_checkin
WHERE person_id = 67318

SELECT *
FROM facebook_event_checkin
WHERE event_name = ' SQL murder mystery dinner'
---select all from income tablecrime_scene_report
SELECT *
FROM facebook_event_checkin
WHERE date = 20180115 AND person_id = 67318
---Select witness 1 transcript from the interview table
SELECT *
FROM interview
where person_id = 67318
-- Investigation :He was hired by a woman she's around 5'5" (65") or 5'7" (67").
--                 She has red hair and she drives a Tesla Model 
--                  I know that she attended the SQL Symphony Concert 3 times in December 2017
SELECT * 
from drivers_license
WHERE car_make like '%tesla%' and gender = "female" and hair_color = 'red' 
----select the 3 Ids from Person table for more info.
SELECT *
from person
where license_id in (918773, 291182, 202298)
----To get our suspect I need to check their facebook evefacebook_event_checkinto see if they went to SQL Symphony Concertcrime_scene_report
select *
from facebook_event_checkin
where person_id in (78881, 90700, 99716)
----Only one Id came out of the 3 Ids, we need to know who this Id belongs to.
SELECT *
from person
where id = 99716 
---INVESTIGATION RESULT : This shows that Miranda Priestly was the rich woman that sent Jeremy to commit the murder on 20180115.