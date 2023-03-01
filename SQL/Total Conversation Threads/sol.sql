SELECT
    COUNT(DISTINCT GREATEST(receiver_id, sender_id), LEAST(receiver_id, sender_id)) as total_conv_threads
FROM
    messenger_sends