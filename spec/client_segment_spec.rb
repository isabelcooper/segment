require "./lib/client"
require "./lib/client_segment"

describe "client_segment" do
  it "classifies small clients" do
    small_client = Client.new(1,1,0.1)
    segment = client_segment(small_client)
    expect(segment).to eq"small"
  end
end