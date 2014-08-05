module RPS

class Player

  attr_reader :name, :email, :username, :wins, :loss, :id


  def initialize(args)
    @id = args[:id]
    @username = args[:username]
    @email = args[:email]
    @wins = 0
    @loss = 0
  end
end






end

