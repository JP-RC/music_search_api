artist ||= @artist

json.id artist['id']
json.name artist['name']

if artist.class == Hash
  json.active
Artist.find(artist['id']).active_for_song?(@api_key.song)
else
  json.active artist.active_for_song?(@api_key.song)
end

if artist.class == ActiveRecord::Base && !artist.persisted? && !artist.valid?
  json.errors artist.errors.messages

end
