# OmniAuth::NocturnalCode

An OmniAuth Strategy for NocturnalCode.com.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-nocturnalcode'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-nocturnalcode

## Usage

### Sinatra

```ruby
require 'omniauth'
require 'omniauth-nocturnalcode'

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider "NocturnalCode", 'YOUR_CLIENT_ID', 'YOUR_CLIENT_SECRET'
end

get '/auth/:provider/callback' do
  # Do something with auth_hash
  redirect to('/')
end

def auth_hash
  request.env['omniauth.auth']
end
```