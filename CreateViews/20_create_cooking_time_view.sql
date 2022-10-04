CREATE VIEW CookingTimeView AS
    (
    SELECT PrepTime.prep_time as prep_time,
           PrepTime.prep_time_id as prep_time_id

           FROM PrepTime
    );

select * from CookingTimeView;