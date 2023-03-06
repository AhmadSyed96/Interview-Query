WITH logins AS (
  SELECT 
    user_id, 
    created_at, 
    variant
  FROM events
  JOIN variants
  ON events.user_id = variants.user_id
  WHERE action = 'login'
),
unsubscribes AS (
  SELECT 
    user_id, 
    created_at, 
    variant
  FROM events
  JOIN variants
  ON events.user_id = variants.user_id
  WHERE action = 'unsubscribe'
),
cohort_sizes AS (
  SELECT 
    variant, 
    COUNT(DISTINCT user_id) AS cohort_size
  FROM variants
  GROUP BY variant
)
SELECT 
  logins.variant,
  FLOOR((logins.created_at - unsubscribes.created_at) / INTERVAL 1 DAY) AS days_since_unsubscription,
  100.0 * COUNT(DISTINCT logins.user_id) / cohort_sizes.cohort_size AS login_rate_percent
FROM logins
JOIN unsubscribes
ON logins.user_id = unsubscribes.user_id
JOIN cohort_sizes
ON logins.variant = cohort_sizes.variant
WHERE logins.created_at BETWEEN unsubscribes.created_at + INTERVAL -30 DAY AND unsubscribes.created_at + INTERVAL 30 DAY
GROUP BY logins.variant, days_since_unsubscription
ORDER BY logins.variant, days_since_unsubscription;
