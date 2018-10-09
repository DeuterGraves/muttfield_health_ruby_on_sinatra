require_relative("../db/sql_runner.rb")

class Course

attr_reader :id
attr_accessor :type

def initialize(options)
  @id = options["id"].to_i
  @type = options["type"]
end

# single_result

def self.hash_result(data)
  course_hash = data[0]
  course = Course.new(course_hash)
end

# map_items

def self.map_items(data)
  result = data.map{|details| Course.new(details) }
  return result
end


# delete all
def self.delete_all()
  sql = "DELETE FROM courses;"
  SqlRunner.run(sql)
end

# save
def save()
  sql = "INSERT into courses(type)
    VALUES($1)
    RETURNING id;"

  values = [@type]
  result = SqlRunner.run(sql, values)
  result_hash = result[0]
  string_id = result_hash["id"]
  @id = string_id.to_i
end


# update

def update()
  sql = "UPDATE courses
    SET type = $1
    WHERE id = $2;"

  values = [@type, @id]
  SqlRunner.run(sql,values)
end

# find_all

def self.all()
  sql = "SELECT * FROM courses;"

  result = SqlRunner.run(sql)
  Course.map_items(result)
end

# find(id)
def self.find(id)
  sql = "Select * FROM courses
    WHERE ID = $1;"

  values = [id]
  data = SqlRunner.run(sql,values)
  Course.hash_result(data)

end

# delete(id)
def delete()
  sql = "DELETE FROM courses
    WHERE ID = $1;"

  values = [id]
  data = SqlRunner.run(sql,values)
end

def sessions()
  sql = "SELECT sessions.* FROM sessions
    INNER JOIN courses
    ON sessions.course_id = courses.id
    WHERE course_id = $1;"

  result = SqlRunner.run(sql, [@id])
  Session.map_items(result)
end

# class end
end
