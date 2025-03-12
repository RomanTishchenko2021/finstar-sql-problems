select c.ClientName, cc.ContactAmount
from Clients c
join
    (select ClientId,
            count(*) ContactAmount
     from ClientContacts
     group by ClientId
     having count(*) > 2) cc on c.Id = cc.ClientId
