SELECT
    (SELECT COUNT(*) FROM friend_accepts)
    /
    (SELECT COUNT(DISTINCT requester_id, requested_id) FROM friend_requests) as acceptance_rate
    