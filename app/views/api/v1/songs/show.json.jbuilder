song ||= @song

json.id song['id']
json.name song['name']

if song.class == Hash
  json.active
song.find(song['id']).active_for_song?(@api_key.artist)
else
  json.active song.active_for_song?(@api_key.artist)
end

if song.class == ActiveRecord::Base && !song.persisted? && !song.valid?
  json.errors song.errors.messages

end
