class Echonest

  attr_reader :response
  def initialize(artist_name)
    key = "api_key=#{ENV['ECHONEST_KEY']}"
    @response = HTTParty.get("http://developer.echonest.com/api/v4/artist/video?#{key}&name=#{artist_name}&format=json&results=1&start=0")
  end


  def video
    @response["response"]["video"]
  end

  def title
    video.first["title"]
  end
end
