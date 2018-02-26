json.extract! song, :id, :title

json.artist do
  json.id song.artist.id
  json.name song.artist.name
end

json.album do
  json.id song.album.id
  json.title song.album.title
end
