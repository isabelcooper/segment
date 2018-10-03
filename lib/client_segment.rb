def client_segment(client)
   if (client.employees < 50 && client.offices == 1 && client.turnover_in_millions < 1.0 )
     "small"
     else "enterprise"
   end
end

def segment(clients)

end

#  Small - employee count is less than 50 and number of offices is one and annual turnover is less than £1M.
# Enterprise - all other clients.

