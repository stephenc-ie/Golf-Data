"""
    INSERT INTO stg_liv_leaderboards (
        id, name, firstName, lastName, position, `rank`, status,
        teamName, teamColour, teamIsCaptain, teamIsCoCaptain,
        round1Score, round2Score, round3Score, round4Score,
        totalScore, eventId
    )
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    ON DUPLICATE KEY UPDATE
        name = VALUES(name), firstName = VALUES(firstName), lastName = VALUES(lastName),
        position = VALUES(position), `rank` = VALUES(`rank`), status = VALUES(status),
        teamName = VALUES(teamName), teamColour = VALUES(teamColour),
        teamIsCaptain = VALUES(teamIsCaptain), teamIsCoCaptain = VALUES(teamIsCoCaptain),
        round1Score = VALUES(round1Score), round2Score = VALUES(round2Score),
        round3Score = VALUES(round3Score), round4Score = VALUES(round4Score),
        totalScore = VALUES(totalScore), eventId = VALUES(eventId);
"""