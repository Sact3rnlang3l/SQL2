update customer
set fax = null
where fax = not null

update customer
set company = 'Self'
where company is null

update customer
where first_name = Julia and last_name = Barnett
set last_name = Thompson

update customer
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl'


update track
set composer = 'The Darkness around us'
where genre_id = (
    select genre_id 
    from genre 
    where name = 'Metal') 
    and composer is null