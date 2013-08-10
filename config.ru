require 'grape'

class API < Grape::API
  format :json

  get :hello do
    { hello: "world" }
  end
end

use Rack::Session::Cookie
run Rack::Cascade.new [API]
