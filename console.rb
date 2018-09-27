require_relative('./models/artist.rb')
require_relative('./models/album.rb')
require('pry')

artist1 = Artist.new({
  "name" => "Kasabian" })
artist1.save()

artist2 = Artist.new({
  "name" => "Drake" })
artist2.save()

album1 = Album.new ({
  "artist_id" => artist1.id,
  "title" => "Empire",
  "genre" => "Indie Rock" })
album1.save()

album2 = Album.new ({
  "artist_id" => artist2.id,
  "title" => "More Life",
  "genre" => "Pop Music" })
album2.save()



binding.pry
nil
