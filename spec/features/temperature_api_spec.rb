require 'net/http'

describe  "getting the temperature from the api" do
  it " should store the temperature when posted" do
    post_url = URI.parse('http://localhost:9292/temperature/')
    get_url = URI.parse('http://localhost:9292/temperature/')
    Net::HTTP.post(post_url, 'temp=25' )
    result = Net::HTTP.get(get_url)
    expect(JSON.parse(result)).to eq(25)
  end
end
