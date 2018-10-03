require "./lib/client"
require "./lib/client_segment"

describe "client_segment" do
  it "classifies small clients" do
    expect(client_segment(Client.new(1, 1, 0.1))).to eq "small"
    expect(client_segment(Client.new(50, 1, 0.1))).to eq "enterprise"
    expect(client_segment(Client.new(1, 2, 0.1))).to eq "enterprise"
    expect(client_segment(Client.new(1, 1, 1.0))).to eq "enterprise"
  end
end


=begin
 Step 1

Can you write a program that returns one of two classifications given a client. The classifications are:

Small - employee count is less than 50 and number of offices is one and annual turnover is less than £1M.
Enterprise - all other clients.
=end