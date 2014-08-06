require 'digest/sha1'

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

    def update_password(password)
      @password_digest = Digest::SHA1.hexdigest(password)
    end

    def has_password?(password)
     Digest::SHA1.hexdigest(password) == @password_digest
    end

  end
end
