require_relative("../db/sql_runner.rb")

class Course

attr_reader :id
attr_accessor :type

def initialize(options)
  @id = options["id"].to_i
  @type = options["type"]
end

# class end
end
