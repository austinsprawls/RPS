module RPS
  class Player
    attr_reader :id, :username, :email, :wins, :loss

    def initialize(args)
      @id = args[:id]
      @username = args[:username]
      @email = args[:email]
      @wins = 0
      @loss = 0
    end
  end
end

