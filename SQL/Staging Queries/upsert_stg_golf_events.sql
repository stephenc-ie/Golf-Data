"""
INSERT INTO stg_golf_events (
    event_id, name, week_number, week_date, week_id, week_year,
    strength_of_field, field_rating, field_size, tour_id,
    tour_name, tour_full_name, tour_code, player_id,
    winner_name, winner_birth_date, winner_country_name,
    winner_winnings, start_date, end_date, cut_size,
    scheduled_rounds_count, first_place_points
) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
"""
