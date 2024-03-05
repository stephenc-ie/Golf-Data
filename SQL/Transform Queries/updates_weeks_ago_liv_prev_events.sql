"""
UPDATE stg_liv_previous_events
    SET weeksAgo = TIMESTAMPDIFF(WEEK, endDate, '{start_of_week.date()}') +
                   IF(DATE(endDate) < '{start_of_week.date()}', 1, 0)
    WHERE endDate IS NOT NULL;

"""