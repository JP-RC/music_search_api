class Echonest

  attr_reader :response
  def initialize(artist_name)
    key = "api_key=#{ENV['ECHONEST_KEY']}"
    @response = HTTParty.get("http://developer.echonest.com/api/v4/artist/video?#{key}&name=#{artist_name}&format=json&results=1&start=0")["response"]["video"]
  end

  def video
    @response.map do |s|
    {
    title: s["title"],
    video: s["url"]
    }
    end
  end
end
