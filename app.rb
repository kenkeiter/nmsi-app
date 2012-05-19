$: << File.join(File.dirname(__FILE__), 'lib/')

require 'bundler/setup'
require 'sinatra/base'

require 'nmsi'

class Application < Sinatra::Base

  get '/' do
    "Hello, world."
  end

end