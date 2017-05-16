require_relative '../middleware/identify_visitor.rb'

module Routes
  class HelloWorld < Coach::Middleware
    uses IdentifyVisitor

    requires :visitor

    def call
      [ 200, {}, ["hello #{visitor}"] ]
    end
  end
end
