require_relative("../db/sql_runner.rb")

class Announcement

  attr_reader :id, :created
  attr_accessor :title, :info, :photo, :author

  def initialize(options)
    @id = options["id"].to_i
    @title = options["title"]
    @info = options["info"]
    @author = options["author"]
    @photo = options["photo"]
    @created = options["created"]
  end

  # single_result
  def self.hash_result(data)
    announce_hash = data[0]
    announce = Announcement.new(announce_hash)
  end

  # map_items
  def self.map_items(data)
    result = data.map{|details| Announcement.new(details) }
    return result
  end

  # delete all()
  def self.delete_all()
    sql = "DELETE FROM announcements;"
    SqlRunner.run(sql)
  end

  # save
  def save()
    sql = "INSERT into announcements(title, info, author, photo)
    VALUES($1, $2, $3, $4)
    RETURNING id, created;"

    values = [@title, @info, @author, @photo]
    result = SqlRunner.run(sql, values)

    result_hash = result[0]
    string_id = result_hash["id"]
    @id = string_id.to_i

    string_created = result_hash["created"]
    simple_time = string_created.slice(0..15)
    @created = simple_time
  end


  # update
  def update()
    sql = "UPDATE announcements
    SET(title, info, author, photo)
    = ($1, $2, $3, $4)
    WHERE id = $5;"

    values = [@title, @info, @author, @photo, @id]
    SqlRunner.run(sql,values)
  end

  # find_all
  def self.all()
    sql = "SELECT * FROM announcements;"

    result = SqlRunner.run(sql)
    Announcement.map_items(result)
  end

  # find(id)

  def self.find(id)
    sql = "Select * FROM announcements
    WHERE ID = $1;"

    values = [id]
    data = SqlRunner.run(sql,values)
    Announcement.hash_result(data)
  end

  # delete(id)
  def delete()
    sql = "DELETE FROM announcements
    WHERE ID = $1;"

    values = [id]
    SqlRunner.run(sql,values)
  end

  def simple_time()
    simple_time = @created.slice!(0..15)
  end

end
