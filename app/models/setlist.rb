class Setlist

  attr_reader :response
  def initialize(artist_name)
    @response = HTTParty.get("http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{artist_name}")
  end


  def setlist
    @response["setlists"]["setlist"]
  end

  def sets
    setlist.map do |s|
      s["sets"]["set"]
    end
  end

  def songs
    sets.map do |s|
      song = s["@name"]
    end
  end

  # def song
  #   songs.map do |s|
  #     s
  #   end
  # end


  # def artist
  #   artist["title"]
  # end

  # def title_list
  #   @response.each do |list|
  #     response = (response.["title"]),
  #     response = (response.["url"])
  #   end
  # end
end
