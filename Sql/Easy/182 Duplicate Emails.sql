-- Problem: 182. Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/duplicate-emails/

select email from Person
group by email
having count(id)>1
