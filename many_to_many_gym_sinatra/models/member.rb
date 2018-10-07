require_relative("../db/sql_runner.rb")

class Member

attr_reader :id
attr_accessor :f_name, :l_name

def initialize(options)
  @id = options["id"].to_i
  @f_name = options["f_name"]
  @l_name = options["l_name"]
end

# single_result

def self.hash_result(data)
  member_hash = data[0]
  member = Member.new(member_hash)
end

# map_items

def self.map_items(data)
  result = data.map{|details| Member.new(details) }
  return result
end


# delete all
def self.delete_all()
  sql = "DELETE FROM members;"
  SqlRunner.run(sql)
end

# save
def save()
  sql = "INSERT INTO members(f_name, l_name)
  VALUES($1, $2)
  RETURNING id;"

  values = [@f_name, @l_name]
  result = SqlRunner.run(sql, values)
  result_hash = result[0]
  string_id = result_hash["id"]
  @id = string_id.to_i
end

# update
def update()
  sql = "UPDATE members
  SET(f_name, l_name)
  = ($1, $2)
  WHERE id = $3;"

  values = [@f_name, @l_name, @id]
  SqlRunner.run(sql, values)
end

# find_all

def self.find_all()
  sql = "SELECT * from members;"

  result = SqlRunner.run(sql)
  Member.map_items(result)
end

# find(id)

# delete(id)



# end class
end
