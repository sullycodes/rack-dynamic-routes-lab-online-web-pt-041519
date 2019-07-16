class Application 

  @@cart = []
  
  def call(env)
  
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
    
    if req.path.match(/cart/)
      
    
    
  
  end


end