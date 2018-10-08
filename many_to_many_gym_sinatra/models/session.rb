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

# update

def update()
  sql = "UPDATE sessions
  SET(course_id, start_time)
  = ($1, $2)
  WHERE id = $3;"

  values = [@course_id, @start_time, @id]
  SqlRunner.run(sql,values)
end

# find_all

def self.find_all()
  sql = "SELECT * FROM sessions;"

  result = SqlRunner.run(sql)
  Session.map_items(result)
end

# find(id)

def self.find(id)
  sql = "Select * FROM sessions
  WHERE ID = $1;"

  values = [id]
  data = SqlRunner.run(sql,values)
  Session.hash_result(data)

end

# delete(id)

def self.delete(id)
  sql = "DELETE FROM sessions
  WHERE ID = $1;"

  values = [id]
  data = SqlRunner.run(sql,values)

end

def members()
  # we want the members for this session SO! we don't NEED the session table, just the session ID - we will be calling this on a session - the ID will be there, take session id to booking table to get the member id take that to member table to pull the members' data.
  sql = "SELECT members.* FROM members
  INNER JOIN bookings
  ON members.id = bookings.member_id
  WHERE session_id = $1
  ;"

  result = SqlRunner.run(sql, [@id])
  Member.map_items(result)

end

#class end
end
