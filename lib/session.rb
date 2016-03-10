require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    @req = req
    @cookie = @req.cookies['_rails_lite_app']
    @cookie_val = @cookie ? JSON.parse(@cookie) : {}
  end

  def [](key)
    @cookie_val[key]
  end

  def []=(key, val)
    @cookie_val[key] = val
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
    cookie = @cookie_val.to_json
    res.set_cookie('_rails_lite_app', {path: '/', value: cookie})
  end
end
