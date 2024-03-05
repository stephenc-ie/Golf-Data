
INSERT INTO stg_liv_previous_events (eventId, eventTitle, eventShortcode, startDate, endDate, isChampionship, eventYear)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
        ON DUPLICATE KEY UPDATE
        eventTitle = VALUES(eventTitle), eventShortcode = VALUES(eventShortcode),
        startDate = VALUES(startDate), endDate = VALUES(endDate),
        isChampionship = VALUES(isChampionship), eventYear = VALUES(eventYear);