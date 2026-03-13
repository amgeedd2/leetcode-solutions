-- Problem: 175 Combine Two Tables
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/combine-two-tables/
select P.firstName,P.lastName,A.city,A.state from  Person P
left join Address A
on A.personId = P.personId
