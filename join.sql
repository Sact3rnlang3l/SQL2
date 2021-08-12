Select invoice, invoice_line.invoice_id, invoice.invoice_id 
from invoice
join invoice_line
on invoice_line.invoice_id = invoice.invoice_id
where unit_price > .99

SELECT invoice_date, customer.first_name, customer.last_name, total, customer.customer_id, invoice.customer_id
from invoice
join customer
on customer.customer_id = invoice.customer_id

SELECT c.first_name,c.last_name,e.first_name, e.last_name 
FROM employee e
JOIN customer c
ON e.employee_id = c.support_rep_id

Select b.title, a.name
from album b
join artist a
on a.artist_id = b.artist_id

Select b.track_id
from playlist_track b
join playlist a
on a.playlist_id = b.playlist_id
where name = 'Music'

SELECT d.name
FROM track d
JOIN playlist_track t
ON t.track_id = d.track_id
WHERE t.playlist_id = 5;

Select a.name, d.name
from playlist a
join playlist_track t
on a.playlist_id = t.playlist_id
join track d
on t.track_id = d.track_id

select t.name, a.title
from album a
join track t
on a.album_id = t.album_id
join genre g 
on t.genre_id = g.genre_id
where g.name = 'Alternative & Punk'