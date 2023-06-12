--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
select count(length) from film where length> (select avg(length) from film )


--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
select count(rental_rate) from film where rental_rate=(select max(rental_rate) from film)


--film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız
SELECT title,rental_rate,replacement_cost FROM film WHERE rental_rate =
(SELECT MIN(rental_rate) FROM film) AND replacement_cost =  (SELECT MIN(replacement_cost) FROM film) 
ORDER BY title;


--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT customer_id, COUNT(payment_id) FROM payment 
 GROUP BY customer_id
 ORDER BY COUNT DESC;