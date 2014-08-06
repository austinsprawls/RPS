module RPS
  class Player
    attr_reader :id, :username, :email, :wins, :losses

    def initialize(args)
      @id = args[:id]
      @username = args[:username]
      @email = args[:email]
      @wins = 0
      @losses = 0
    end
  end
end

