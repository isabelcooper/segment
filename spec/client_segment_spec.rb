require "./lib/client"
require "./lib/client_segment"

describe "client_segment" do
  it "classifies small/medium segment" do
    expect(client_segment(Client.new(49, 1, 0.9))).to eq "small"
    expect(client_segment(Client.new(50, 1, 0.9))).to eq "medium"
    expect(client_segment(Client.new(49, 2, 0.9))).to eq "medium"
    expect(client_segment(Client.new(49, 1, 1.0))).to eq "medium"
  end

  it "classifies medium/large segment" do
    expect(client_segment(Client.new(999, 5, 19.9))).to eq "medium"
    expect(client_segment(Client.new(1000, 5, 19.9))).to eq "enterprise"
    expect(client_segment(Client.new(999, 6, 19.9))).to eq "enterprise"
    expect(client_segment(Client.new(999, 5, 20.0))).to eq "enterprise"
  end

  it "classifies multiple clients" do
    small_client = Client.new(1, 1, 0.5)
    medium_client1 = Client.new(2, 2, 0.5)
    medium_client2 = Client.new(65, 3, 15)
    expected = {
        "small" => [small_client],
        "medium" => [medium_client1, medium_client2]
    }
    expect(segment([small_client, medium_client1, medium_client2])).to eq expected
  end
end


=begin
 Step 1

Can you write a program that returns one of two classifications given a client. The classifications are:

Small - employee count is less than 50 and number of offices is one and annual turnover is less than £1M.
Enterprise - all other clients.

Medium - employee count between 50 - 1000 and office count is between 1 and 5 and turnover is between £10M - £20M.

Can you write a new program that given an array list of clients, returns them grouped into their classifications.

e.g.

segment([Client.new(1, 1, 0.5), Client.new(2,2, 0.5), Client.new(65, 3, 15)]) => {
 "Small" => [Client.new(1, 1, 0.5), Client.new(2,2, 0.5)],
 "Medium" => [Client.new(65, 3, 15)]
}


=end