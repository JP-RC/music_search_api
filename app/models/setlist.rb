class Setlist

  attr_reader :response
  def initialize(artist)
    @response = HTTParty.get("http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{artist}")["setlists"]["setlist"]
  end


  def setlist
    @response.map do |event|
      # event
      {
      artist: event["artist"]["@name"],
      music_brainz_id: event["artist"]["@mbid"],
      sets: parse(event["sets"]["set"])
      }
    end
  end

  private def parse(set)
    if set.nil?
      return {error: "no setlist provided"}
    else
      return set.map do |s|
      set = s.first[1]
      {
        set: parse_set(set)
      }
      end
    end
  end

  private def parse_set(set)
    if set.respond_to?(:map)
      set.map do |s|
        s["@name"]
      end
    else
      return ["no setlist provided"]
    end
  end
end
