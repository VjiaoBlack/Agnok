expected redirects:

/
/settings
/friends




db models:

user
    (user_ids)friends
    (user_ids)walled
    (string)name
    (string)password
    (schedule_ids)schedules
    (circle_ids)circles

circle
    (user_id)host
    (string)name
    (text)description
    (user_ids)members

schedule
    (string)name
    (text)description
    (user_id)owner
    (block_ids)blocks
    (circle_ids)permittedcircles

block
    (user_id)owner
    (schedule_id)schedule
    (int)time_start
    (int)duration_mins
    (string)name
    (text)description
    (circle_ids)permittedcircles






