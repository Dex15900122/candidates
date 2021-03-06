module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def guest_user

        unless current_user.is_a?(User)
          guest="Guest User"
        guest.id = "111"
        guest.name = "Guest"
        guest.first_name = "Guest"
        guest.last_name = "User"
        guest.email = "guest@user.com"
        guest
      end
    end

    def connect
      self.current_user = find_verified_user || guest_user
      logger.add_tages 'ActionCable', current_user.email
      logger.add_tages 'ActionCable', current_user.id
    end
      protected

      def find_verified_user
        if verified_user = env['warden'].user
          verified_user
        end
      end
  end
end
