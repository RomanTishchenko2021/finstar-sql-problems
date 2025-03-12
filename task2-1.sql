select c.ClientName, coalesce(cc.ContactAmount, 0)
from Clients c
left join
    (select ClientId,
            count(*) ContactAmount
     from ClientContacts
     group by ClientId) cc on c.Id = cc.ClientId
