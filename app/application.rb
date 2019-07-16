require 'pry'

class Application 

  @@items = []
  
  def call(env)
  
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/items/)
      item = req.path.split("/items/").last
      # @@items.find {|e| e.name == item}
      @@items.collect do |e| 
        e.name == item 
        e.price
        binding.pry
      end
    else 
      resp.write "Route not found"
      resp.status = 404
    end
    
    resp.finish
  end


end