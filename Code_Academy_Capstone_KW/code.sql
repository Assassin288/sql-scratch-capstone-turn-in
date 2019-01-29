Question 1:
SELECT *
FROM survey
LIMIT 10;

Question 2:
SELECT question, 
Count(distinct user_id)
From survey
Group By question;

Question 3:
Used Microsoft Excel. Answers are in the table on slide 1.2

Question 4:
SELECT *
FROM quiz
LIMIT 5;

SELECT *
FROM home_try_on
LIMIT 5;

SELECT *
FROM purchase
LIMIT 5;

Question 5:
SELECT Distinct quiz.user_id,
   CASE
      WHEN
      home_try_on.user_id IS NOT NULL
      THEN ‘True’
      ELSE ‘False’
   END AS home_try_on,
   CASE
      WHEN
      number_of_pairs.user_id IS NULL
      THEN ‘NULL’
      ELSE ‘number_of_pairs’
   END AS number_of_pairs,
   CASE
      WHEN
      purchase.user_id IS NOT NULL
      THEN ‘True’
      ELSE ‘False’
   END AS is_purchase
FROM quiz
LEFT JOIN home_try_on
   ON home_try_on.user_id = quiz.user_id
LEFT JOIN purchase
   ON purchase.user_id = home_try_on_id
LIMIT 10;

Question 6: 
Answers are on slide 2.2