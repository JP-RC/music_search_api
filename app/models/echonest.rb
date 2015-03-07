class Echonest

  attr_reader :response
  def initialize(artist_name)
    key = "api_key=#{ENV['ECHONEST_KEY']}"

    @response = HTTParty.get("http://developer.echonest.com/api/v4/artist/video?#{key}&name=#{artist_name}&format=json&results=5&start=0")
  end


  def video
    @response["response"]["video"]
  end

  def title
    video.first["title"]
  end

  # def video_list
  #   @response.each do |list|
  #     response = (response.["title"]),
  #     response = (response.["url"])
  #   end
  # end
end
