SELECT
  category,
  COUNT(*) AS count_value
FROM
  airline
CROSS JOIN
  (SELECT 'Female' AS category FROM DUAL UNION ALL
   SELECT 'Business Class' AS category FROM DUAL UNION ALL
   SELECT 'Economy Class' AS category FROM DUAL UNION ALL
   SELECT 'Children' AS category FROM DUAL UNION ALL
   SELECT 'Adults in Business Class' AS category FROM DUAL) categories
WHERE
  (category = 'Female' AND gender = 'Female') OR
  (category = 'Business Class' AND Class = 'Business') OR
  (category = 'Economy Class' AND Class = 'Eco') OR
  (category = 'Children' AND age < 13) OR
  (category = 'Adults in Business Class' AND age > 16 AND Class = 'Business')
GROUP BY
  category;
