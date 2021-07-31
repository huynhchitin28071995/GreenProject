module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected

    def find_verified_user
      reject_unauthorized_connection and return if env['warden'].nil? || env['warden'].user.nil?
      env['warden'].user
    end
  end
end
