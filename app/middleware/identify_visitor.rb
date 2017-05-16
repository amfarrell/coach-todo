require 'pry'

class IdentifyVisitor < Coach::Middleware
  provides :visitor

  def call
    return [ 401, {}, ['You may not enter.']] if unwelcome?

    provide(visitor: visitor)
    next_middleware.call
  end

  def unwelcome?
    ['ants', 'mould'].include? visitor
  end

  def visitor
    @visitor ||= params[:person]
  end
end
