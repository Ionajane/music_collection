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
  "title" => "Empire",
  "genre" => "Indie Rock" })

album2 = Album.new ({
  "title" => "More Life",
  "genre" => "Pop Music" })

binding.pry
nil
