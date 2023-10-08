SELECT*FROM  [dbo].[TSHIRT];
 ----------------discount of tshirt
SELECT [dbo].[TSHIRT].*,(discount_price/ACTUAL_PRICE)*100  AS DISCOUNT_PERCENT FROM [dbo].[TSHIRT]

SELECT NAME,discount_price,MAX (cast(ratings as int )) AS HIGHRATING_TSHIRTS ,max(cast(actual_price as int)) as high_price FROM  
[dbo].[TSHIRT]
where discount_price is null
GROUP BY NAME,discount_price;





select count(*)-count(ratings)ratings,count(*)-count(no_of_ratings) no_of_ratings from [dbo].[TSHIRT]
group by name
having count(*)>1;


select*from [dbo].[TSHIRT];
select*from [dbo].[TSHIRT];
select max(no_of_ratings) from [dbo].[TSHIRT] where name ='';

select name ,max(cast(ratings as int))as ratings,max(cast(no_of_ratings as int))as how_manycutsomer_rating
from [dbo].[TSHIRT]
where ratings is not null 
 group by name



select[dbo].[TSHIRT].*,DENSE_RANK()over( order by cast(no_of_ratings as int)desc)as 
ranking from [dbo].[TSHIRT]
 


select name ,max(cast(ratings as int))as ratings,max(cast(no_of_ratings as int))as how_manycutsomer_rating
from [dbo].[TSHIRT]
where ratings is not null 
 group by name


 select name,max(cast(ratings as int))as ratings,max(cast(no_of_ratings as int))as how_manycutsomer_rating
,count(cast(ratings as int))as ratings_count from [dbo].[TSHIRT]
where ratings is  null 
 group by name


 select*from [dbo].[TSHIRT];
------ IMP data of high_rating and no_of_rating customer data of amazon tshirt sales and discount percent

 select name,ratings,no_of_ratings,actual_price,discount_price,sum(discount_price/actual_price)*100 as total_shirtdiscountpernctage
 ,max(name)as high_sales_TSHIRT,max(no_of_ratings)as high_sales_total_customer_feedback
 from [dbo].[TSHIRT]
 where ratings is not null and no_of_ratings is not null and actual_price is not null and discount_price is not null
 group by name,ratings,no_of_ratings,actual_price,discount_price
 ORDER BY no_of_ratings DESC

 -----high sales Allen Solly Men's Regular Fit Polo ratings 4.1, total no of ratings(60020)
select max(no_of_ratings) from[dbo].[TSHIRT] where actual_price ='1099' and discount_price='590';
select*from [dbo].[TSHIRT] where actual_price ='1099' and discount_price='590';


---- 5 star rating t shirt is total records(1513)
   select*from [dbo].[TSHIRT] where ratings ='5'and
 no_of_ratings is not null and actual_price is not null and discount_price is not null
 
 
 --------------- 5 star rating t shirt high no_of_ratings (20) its show  links but differnt link name will 
 ------------same(TREND ARMOUR Men's Round Neck Regular Dry Fit Gym Sports T-Shirt)
 select*from [dbo].[TSHIRT] where ratings ='5' and no_of_ratings ='20' and
 no_of_ratings is not null and actual_price is not null and discount_price is not null

 
 
 ----- highprice TSHIRT HAS NO OF RATING IS ZERO 'Ethnix by Raymond Men Tunic Shirt'
 select max(actual_price) from [dbo].[TSHIRT]
 select * from [dbo].[TSHIRT] where actual_price='15995';

   SELECT @@VERSION,
  MAX(actual_price)AS GREATEST
  FROM  [dbo].[TSHIRT] ;



 
   
   ---HALF NIQABS THIS IS WOMEN COLTHING CATEGORY 
    DELETE FROM [dbo].[TSHIRT] WHERE actual_price='129'
      select NAME,MIN(actual_price)OVER(PARTITION BY NAME ORDER BY NAME DESC)from [dbo].[TSHIRT]
	    select NAME,MIN(actual_price)OVER(PARTITION BY NAME ORDER BY actual_price DESC)from [dbo].[TSHIRT]
   select * from [dbo].[TSHIRT] where actual_price='30'

--- not null  no_of_rating price as ranking total records('12089')
 SELECT [dbo].[TSHIRT].*,DENSE_RANK ()OVER(PARTITION BY ratings ORDER BY actual_price desc)as rank 
from [dbo].[TSHIRT] where no_of_ratings is not null and actual_price is not null and discount_price is not null
and ratings is not null 

select*from [dbo].[TSHIRT] where name = 'Puma Men T-Shirt';

---- puma TSHIRT NOT NULL VALUES TOTAL RECORDS (112)
select name,ratings,no_of_ratings,actual_price,discount_price,count(*)over() 
from [dbo].[TSHIRT] where  name='Puma Men T-Shirt' and no_of_ratings is not null and actual_price is not null and discount_price is not null
and ratings is not null

---- puma TSHIRT  NULL VALUES TOTAL RECORDS (1)
select name,ratings,no_of_ratings,actual_price,discount_price,count(*)over() 
from [dbo].[TSHIRT] where  name='Puma Men T-Shirt' and no_of_ratings is  null and actual_price is  null and 
discount_price is  null and ratings is  null;


select name,ratings,no_of_ratings,actual_price,discount_price,count(*)
from [dbo].[TSHIRT] where  name='Puma Men T-Shirt' and no_of_ratings is not null and actual_price is not null and discount_price is not null
and ratings is not null
group by name,ratings,no_of_ratings,actual_price,discount_price;


---  null  no_of_rating price as ranking total records(140)
SELECT [dbo].[TSHIRT].*,DENSE_RANK ()OVER(PARTITION BY ratings ORDER BY actual_price desc)as rank 
from [dbo].[TSHIRT] where no_of_ratings is  null and actual_price is  null and discount_price is  null
and ratings is  null



 

---data of rating is zero and sales is not good

select name,ratings,no_of_ratings,actual_price,discount_price,sum(actual_price/discount_price)*100 as total_shirtdiscountpernctage
 ,max(name)as high_sales_TSHIRT,max(no_of_ratings)as high_sales_TSHIRT
 from [dbo].[TSHIRT]
 where ratings is null and no_of_ratings is null and actual_price is null and discount_price is null
 group by name,ratings,no_of_ratings,actual_price,discount_price
 order by actual_price desc
 



 
 select*from [dbo].[TSHIRT];
select name,ratings,discount_price ,count(*)over() from [dbo].[TSHIRT] where actual_price is null;
select name,ratings,actual_price ,count(*)over() from [dbo].[TSHIRT] where discount_price is null;

select name,ratings,actual_price ,discount_price,count(*)over() from [dbo].[TSHIRT] 
where discount_price is not null and actual_price is not null;
select name,ratings,actual_price ,discount_price,count(*)over() from [dbo].[TSHIRT] where actual_price is not null;




----select count(*)from [dbo].[TSHIRT] where actual_price is null total_count(362)
----select count(*)from [dbo].[TSHIRT] where discount_price is null total_count (1493)
----select count(*) from [dbo].[TSHIRT] where  ratings is null total_count(6148)
----select count(*) from [dbo].[TSHIRT] where  no_of_ratings is null  total_count(6148)



--select count(*)from [dbo].[TSHIRT] where actual_price is not null total_count (18739)
--select count(*)from [dbo].[TSHIRT] where discount_price is not null total_count(17608)
--select count(*) from [dbo].[TSHIRT] where no_of_ratings is not null  total_count(12953)
--select count(*) from [dbo].[TSHIRT] where ratings is not null  total_count(12953)





select count(*) from [dbo].[TSHIRT] --19101
---- in one query show all null records
select count(*)-count(name)name,
count(*)-count(main_category)main_category,
count(*)-count(sub_category)sub_category,
count(*)-count(image)image,
count(*)-count(link)link,
count(*)-count(ratings)ratings,
count(*)-count(no_of_ratings)no_of_ratings,
count(*)-count(discount_price)discount_price,
count(*)-count(actual_price)actual_price
from [dbo].[TSHIRT]




select count(*)from [dbo].[TSHIRT] where discount_price is null 
select count(*)from [dbo].[TSHIRT] where actual_price is null 

select count(*) from [dbo].[TSHIRT] where discount_price is not null and 
ratings is not null and actual_price is not null and no_of_ratings is not null
--- except minus
select [dbo].[TSHIRT].*,count(*)  over () from [dbo].[TSHIRT] where discount_price is not null and 
ratings is not null and actual_price is not null and no_of_ratings is not null


select count(*) from [dbo].[TSHIRT]where discount_price is  null and 
ratings is  null and actual_price is  null and no_of_ratings is  null
--- except minus
select [dbo].[TSHIRT].*,count(*)  over (partition by name order by actual_price desc) from [dbo].[TSHIRT] where discount_price is  null and 
ratings is  null and actual_price is  null and no_of_ratings is  null

---- duplicate records NOT NULL(1875)
select name,count(*) from [dbo].[TSHIRT]
where discount_price is not null and 
ratings is not null and actual_price is not null and no_of_ratings is not null
group by name
having count(*)>1;

--------DUPLICATE NULL RECORDS(30)

select name,count(*) from [dbo].[TSHIRT]
where discount_price is  null and 
ratings is  null and actual_price is  null and no_of_ratings is  null
group by name
having count(*)>1;

--DUPLICATE RECORDS (2845)

select name,count(*) from [dbo].[TSHIRT]
group by name
having count(*)>1;

----- total distinct(unique records is 7083)
SELECT COUNT(DISTINCT(NAME)) FROM [dbo].[TSHIRT] WHERE
discount_price is not null and ratings is not null and actual_price is not null and no_of_ratings is not null

SELECT COUNT(*) FROM [dbo].[TSHIRT] WHERE 
discount_price is not null and ratings is not null and actual_price is not null and no_of_ratings is not null
---EXCEPT MINUS
SELECT COUNT(DISTINCT(NAME)) FROM [dbo].[TSHIRT] WHERE 
discount_price is not null and ratings is not null and actual_price is not null and no_of_ratings is not null




----- unisex TSHIRT CLOTHES TOTAL RECORDS(745) NOT NULLL
select*from [dbo].[TSHIRT] where name like '%unisex%' and discount_price is not null and 
ratings is not null and actual_price is not null and no_of_ratings is not null

select name,actual_price,discount_price,no_of_ratings, count(name)from [dbo].[TSHIRT]
where name like '%unisex%'and discount_price is not null and 
 actual_price is not null and no_of_ratings is not null
 group by name,actual_price,discount_price,no_of_ratings;

 select*from [dbo].[TSHIRT] where actual_price ='2900' and discount_price ='2620';
 select*from [dbo].[TSHIRT] where name like '%Aikon%';
select*from [dbo].[TSHIRT] where name like '%Uniform%';
select*from [dbo].[TSHIRT] where name like '%GAZELLE%'and
discount_price is not null and ratings is not null and actual_price is not null and no_of_ratings is not null
--- UNISEX TSHIRT CLOTHES HIGH_RATING SALES RECORDS MAX(1785) FEED BACK OF HANGOUT HUB UNISEX TSHIRT BRAND
select [dbo].[TSHIRT].*,MAX( no_of_ratings)OVER()from [dbo].[TSHIRT] where name like '%unisex%' and 
discount_price is not null and ratings is not null and actual_price is not null and no_of_ratings is not null
ORDER BY no_of_ratings DESC

 -----unisex TSHIRT CLOTHES TOTAL RECORDS(6) NULL
 select [dbo].[TSHIRT].*,MAX( no_of_ratings)OVER()from [dbo].[TSHIRT] where name like '%unisex%' and 
 discount_price is  null and 
ratings is  null and actual_price is  null and no_of_ratings is  null



SELECT *FROM [dbo].[TSHIRT]

SELECT a.name,a.ratings,b.name,b.ratings,ISNULL(a.ratings,b.ratings)
from [dbo].[TSHIRT] a
join[dbo].[TSHIRT] b
on
a.name = b.name 
where a.ratings is null

update a
set ratings=ISNULL(a.ratings,b.ratings)
from [dbo].[TSHIRT] a
join[dbo].[TSHIRT] b
on
a.name = b.name 
where a.ratings is null


select (cast(no_of_ratings as int))as no_ratings,(cast(discount_price as int)) as no_of_discount,
(cast(actual_price as int))as real_price,name,count(name),max(cast(actual_price as int))as high_price,
 min(cast(discount_price as int))as low_price
 from [dbo].[TSHIRT] where discount_price is not null 
and ratings is not null and actual_price is not null and no_of_ratings is not null
group by name ,actual_price,discount_price,no_of_ratings
having count(name)>1 or max(actual_price)>1 or min(discount_price)>1


select distinct((no_ratings),(ratings),(actual_price),(discount_price))from [dbo].[TSHIRT] 

select name,min(discount_price)over() from [dbo].[TSHIRT] where discount_price ='99';
select ratings,discount_price,name,max(actual_price)as high_price,max(discount_price) as discount_price from [dbo].[TSHIRT] 
group by discount_price,name,ratings
order by ratings desc


select*from [dbo].[TSHIRT] where name='Yamaha Racing Polo Shirt' and actual_price is null and discount_price is null
select count(*)from [dbo].[TSHIRT] where  actual_price is null or discount_price is null


------ in table actual_price but discount is null but sold highly in table 

select no_of_ratings,actual_price,name,count(discount_price)as no_value,count(actual_price)as value_price from [dbo].[TSHIRT]
where  discount_price is null and actual_price is not null and no_of_ratings is not null
group by name,actual_price,no_of_ratings
order by actual_price desc



select no_of_ratings,actual_price,name,count(discount_price)as no_value,count(actual_price)as value_price from [dbo].[TSHIRT]
where name like'%unisex%' or discount_price is null and actual_price is not null and no_of_ratings is not null
group by name,actual_price,no_of_ratings
order by actual_price desc





---- in table polo mint,unisex sock,Jockey Girl's Regular Fit T-Shirt FLITE Men's Slider Slipper
select*from [dbo].[TSHIRT] where name like'%slipper%';
select*from [dbo].[TSHIRT] where name like'%sock%';
select*from [dbo].[TSHIRT] where name like'%T-shirts & Polos%';
select*from [dbo].[TSHIRT] where name like'%clothing%';
select*from [dbo].[TSHIRT] where name like'%women%' 
select*from [dbo].[TSHIRT] where name like'%unisex%' and 
discount_price is null and actual_price is not null and no_of_ratings is not null


select*from [dbo].[TSHIRT] where name like'%U.S. POLO ASSN. Men Green Patch Pocket Solid Casual Shirt%' ; 


select actual_price,discount_price,name,no_of_ratings from [dbo].[TSHIRT] where name like'%puma%' and
discount_price is not null and actual_price is not null and no_of_ratings is not null






----- without discount records sales(total_records 643)

select *from
[dbo].[TSHIRT] where discount_price is null and actual_price is not null and no_of_ratings is not null
order by no_of_ratings desc

select count(*)from
[dbo].[TSHIRT] where discount_price is null and actual_price is not null and no_of_ratings is not null

select*from [dbo].[TSHIRT] where name like'%U.S. POLO ASSN. Men Green Patch Pocket Solid Casual Shirt%' ; 





