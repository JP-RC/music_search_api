class Setlist

  attr_reader :response
  def initialize(artist_name)
    @response = HTTParty.get("http://api.setlist.fm/rest/0.1/search/setlists.json?artistName=#{artist_name}")
  end

  def setlists
    @response["setlists"]
  end

  def setlist
    setlists["setlist"]
  end

  def sets
    setlist[0]["sets"]
  end

  def set
    sets["song"]

  end
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
