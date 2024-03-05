"""
    INSERT INTO stg_owgr_leaderboards ({', '.join(data_dict.keys())})
    VALUES ({', '.join(['%s'] * len(data_dict))})
    ON DUPLICATE KEY UPDATE
    {', '.join([f"{key} = VALUES({key})" for key in data_dict.keys() if key != 'id'])}
"""