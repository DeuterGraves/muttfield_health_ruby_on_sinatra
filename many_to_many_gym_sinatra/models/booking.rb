require_relative("../db/sql_runner.rb")

class Booking

  attr_reader :id
  attr_accessor :session_id :member_id

def initialize(options)
  @id = options["id"].to_i
  @session_id = options["session_id"].to_i
  @member_id = options["member_id"].to_i
end

# class end
end
