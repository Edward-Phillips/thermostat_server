require 'net/http'

describe  "storing the power saving mode on the api" do
  it " should store the power saving status when posted" do
    post_url = URI.parse('http://localhost:9292/power-saving/')
    get_url = URI.parse('http://localhost:9292/power-saving/')
    Net::HTTP.post(post_url, 'saving=true')
    result = Net::HTTP.get(get_url)
    expect(JSON.parse(result)).to eq(true)
  end
end