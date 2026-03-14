-- Problem: 181. Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
-- First Solution: Correlated Subquery

select name as Employee from Employee e
where salary > (
    select salary from Employee
where id = e.managerId)


-- Anther Solution: Self Join

select e1.name as Employee 
from Employee e1
left join Employee e2
on e1.managerId = e2.id
where e1.salary > e2.salary 
