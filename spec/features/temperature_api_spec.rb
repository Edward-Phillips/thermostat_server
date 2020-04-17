require 'net/http'

describe  "gettting the temperature from the api" do
  it " should tell you the temperature when queried" do
    url = URI.parse('http://localhost:9292/temperature/')
    result = Net::HTTP.get(url)
    expect(JSON.parse(result)).to eq(20)
  end
end
