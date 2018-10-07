require_relative("../db/sql_runner.rb")

class Session

attr_reader :id
attr_accessor :course_id, :start_time

def initialize(options)
  @id = options["id"].to_i
  @course_id = options["course_id"].to_i
  @start_time = options["start_time"]
end

# single_result

def self.hash_result(data)
  session_hash = data[0]
  session = Session.new(session_hash)
end

# map_items

def self.map_items(data)
  result = data.map{|details| Session.new(details) }
  return result
end


# delete all
def self.delete_all()
  sql = "DELETE FROM sessions;"
  SqlRunner.run(sql)
end

# save
def save()
  sql = "INSERT into sessions(course_id, start_time)
  VALUES($1, $2)
  RETURNING id;"

  values = [@course_id, @start_time]
  result = SqlRunner.run(sql, values)
  result_hash = result[0]
  string_id = result_hash["id"]
  @id = string_id.to_i
end

#class end
end
