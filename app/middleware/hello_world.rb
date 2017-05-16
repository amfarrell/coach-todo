class HelloWorld < Coach::Middleware
  def call
    # Middleware return a Rack response
    [ 200, {}, ['hello world'] ]
  end
end
