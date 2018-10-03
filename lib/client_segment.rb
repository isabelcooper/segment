def client_segment(client)
   if client.employees < 50 && client.offices == 1 && client.turnover_in_millions < 1.0
     "small"
   elsif client.employees < 1000 && client.offices < 6  && client.turnover_in_millions <20.0
     "medium"
     else "enterprise"
   end
end

def segment(clients)
  segment = clients.map {|client| client_segment(client) }
  groups = Hash.new([])
  clients.each do |client|
    groups[client_segment(client)] += [client]
  end
  return groups
end

#  Small - employee count is less than 50 and number of offices is one and annual turnover is less than £1M.
# Enterprise - all other clients.

