require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class NocturnalCode < OmniAuth::Strategies::OAuth2
      
      option :name, "nocturnalcode"

      option :client_options, {
        :site => "http://nocturnalcode.com",
        :authorize_url => "/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :name => raw_info["name"]
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/oauth/me').parsed
      end
      
    end
  end
end
