require_relative("../db/sql_runner.rb")

class Session

attr_reader :id
attr_accessor :course_id, :start_time

def initialize(options)
  @id = options["id"].to_i
  @course_id = options["course_id"].to_i
  @start_time = options["start_time"]
end

#class end
end
