"""
    UPDATE stg_golf_events
    SET weeksAgo = TIMESTAMPDIFF(WEEK, week_date, '{start_of_week.date()}') +
                   IF(DATE(week_date) < '{start_of_week.date()}', 1, 0)
    WHERE week_date IS NOT NULL;
"""