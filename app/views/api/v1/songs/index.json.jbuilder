json.songs @songs, partial: 'api/v1/songs/show', as: :song
json.total_count @songs.respond_to?(:total_entries) ? @songs.total_entries : @songs.to_a.count
