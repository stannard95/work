require 'sinatra'
require 'sinatra/reloader' if development?

require_relative "./controllers/post_controllers.rb"

run PostsController
