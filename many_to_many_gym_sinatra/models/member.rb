require_relative("../db/sql_runner.rb")

class Member

attr_reader :id
attr_accessor :f_name, :l_name

def initialize(options)
  @id = options["id"].to_i
  @f_name = options["f_name"]
  @l_name = options["l_name"]
end


# end class
end
