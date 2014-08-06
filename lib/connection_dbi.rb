require 'pg'

module RPS
  class Connection
      def initialize
        @db = PG.connect(host: 'localhost', dbname: 'rps')
      end
    
      def persist_user(player)
        @db.exec_params(%q[
          INSERT INTO players (username, password_digest)
          VALUES ($1, $2);
        ], [player.playersname, player.password_digest])
      end
    
      def get_user_by_username(username)
        result = @db.exec(%Q[
          SELECT * FROM players WHERE username = '#{username}';
        ])
    
        user_data = result.first
        
        if user_data
          build_user(result.first)
        else
          nil
        end
      end
    
      def build_user(data)
        RPS::Player.new(username: data['username'], password_digest: data['password_digest'])
      end
  end

  def self.dbi_connection
    @__db_instance ||= Connection.new
  end
end