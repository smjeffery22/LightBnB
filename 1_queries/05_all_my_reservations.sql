SELECT p.*, r.*, avg(pr.rating) AS average_rating
FROM reservations AS r
JOIN properties AS p ON r.property_id = p.id
JOIN property_reviews AS pr ON pr.property_id = p.id
WHERE r.guest_id = 1 AND r.end_date < now()::date
GROUP BY p.id, r.id
ORDER BY r.start_date
LIMIT 10;