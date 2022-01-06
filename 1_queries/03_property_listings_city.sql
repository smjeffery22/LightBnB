SELECT p.*, avg(pr.rating) AS average_rating
FROM properties AS p
JOIN property_reviews AS pr ON p.id = pr.property_id
WHERE city LIKE '%ancouv%'
GROUP BY p.id
HAVING avg(pr.rating) >= 4
ORDER BY p.cost_per_night
LIMIT 10;