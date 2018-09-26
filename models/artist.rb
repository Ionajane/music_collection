require_relative('../db/sql_runner.rb')
class Artist

  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i()
    @name = options['name']
  end

  def save()
    sql = " INSERT INTO artists (name)
    VALUES ($1) RETURNING id; "

    results = SqlRunner.run(sql, [@name])
    @id = results[0]['id'].to_i()
  end







end
