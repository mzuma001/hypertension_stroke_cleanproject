select*
from [dbo].[healthcare-dataset-stroke-data3]


select gender,count(gender) as gender_group
from [healthcare-dataset-stroke-data3]
group by gender

select top 100*
from [healthcare-dataset-stroke-data3]

select GENDER, COUNT (GENDER)
from [healthcare-dataset-stroke-data3]
GROUP BY gender


SELECT DISTINCT(HYPERTENSION)
FROM [healthcare-dataset-stroke-data3]

SELECT hypertension,count (hypertension)
from [healthcare-dataset-stroke-data3]
group by hypertension

select avg (age)
from [healthcare-dataset-stroke-data3]

select *
from [healthcare-dataset-stroke-data3]
where hypertension=1 and Residence_type='rural' and work_type='private'


select*
from [healthcare-dataset-stroke-data3]
left join heart
on [healthcare-dataset-stroke-data3].id=heart.Age

select*
from [healthcare-dataset-stroke-data3]
full join heart
on [healthcare-dataset-stroke-data3].id=heart.Age

select*
from [healthcare-dataset-stroke-data3]
union here the tables needs to have same columns
select*
from heart


select id,age,hypertension,heart_disease,ever_married,residence_type,smoking_status,stroke,
case
when age<30 then 'young '
when age between 30 and 50 then 'adult'
when age between 50 and 70 then 'old'
else 'elder'
end as age_group
from [healthcare-dataset-stroke-data3]

select smoking_status, count (smoking_status) as smoking_group
from [healthcare-dataset-stroke-data3]
group by (smoking_status)

select*
from [healthcare-dataset-stroke-data3]


create view health as
(select id,age,hypertension,heart_disease,ever_married,residence_type,smoking_status,stroke,
case
when age<30 then 'young '
when age between 30 and 50 then 'adult'
when age between 50 and 70 then 'old'
else 'elder'
end as age_group
from [healthcare-dataset-stroke-data3])

select *
from health

select*
from [healthcare-dataset-stroke-data3]