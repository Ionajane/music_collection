require('pg')

class SqlRunner

  def self.run(sql, values = [])
    db = PG.connect({
      dbname: 'music_collection',
      host: 'localhost'
    })
    db.prepare('question', sql)
    results = db.exec_prepared('question', values)
    db.close()

    return results
  end

end
