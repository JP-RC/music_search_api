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

  # http://developer.echonest.com/api/v4/artist/video?api_key=OPDX8KDNIH60E1MFQ&id=musicbrainz:artist:4c567499-3a26-40e3-9471-20feb6c73767&format=json

  # def video_list
  #   @response.each do |list|
  #     response = (response.["title"]),
  #     response = (response.["url"])
  #   end
  # end
end
