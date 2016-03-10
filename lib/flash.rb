require 'json'

class Flash
  def initialize(req)
    @req = req
    @flash_hash = @req.coookies['_rails_lite_app_flash']
    @flashes = @flash_hash ? JSON.parse(@flash_hash) : {}
  end

  def [](key)
    @flashes[key]
  end

  def []=(key, val)
    @flashes[key] = val
  end

  def now[]=(key, val)
    @flashes[key] = val
  end


  def store_flash(res)
    res.set_cookie('_rails_lite_app_flash', {path: '/', value: @flashes.to_json})
  end

end
