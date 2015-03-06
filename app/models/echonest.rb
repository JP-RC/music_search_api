class Echonest

  attr_reader :artist_info
  def initialize
    key = "api_key=#{ENV['ECHONEST_KEY']}"
    @artist_info = HTTParty.get("http://developer.echonest.com/api/v4/artist/video?#{key}&name=smiths&format=json&results=1&start=0")
  end
end
