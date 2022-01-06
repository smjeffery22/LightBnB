SELECT p.city, COUNT(r.*) AS total_reservations
FROM properties AS p
JOIN reservations as r ON p.id = r.property_id
GROUP BY p.city
ORDER BY total_reservations DESC;