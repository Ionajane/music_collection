require_relative('../db/sql_runner.rb')
class Album

attr_accessor :title, :genre
attr_reader :id, :artist_id

def initialize(options)
  @id = options['id'].to_i()
  @artist_id = options['artist_id'].to_i
  @title =  options["title"]
  @genre  = options["genre"]
end

  def save()
    sql = " INSERT INTO albums (artist_id, title, genre)
    VALUES ($1, $2, $3) RETURNING id; "

    values = [@artist_id, @title, @genre]

    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i()
  end

end
