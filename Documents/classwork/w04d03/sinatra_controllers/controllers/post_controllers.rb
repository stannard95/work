class PostsController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	get '/post/home' do
	 "this is my homepage"
	end

	#INDEX
	get '/posts' do
		"<h1>this is the POST INDEX PAGE</h1>"
	end

	#NEW
	get '/posts/new' do
		"<p>This is a new</p>"
	end

	#CREATE
	post '/posts' do
		"<h2>POST CREATE</h2>"
	end

	#SHOW
	get '/posts/:id' do
		id = params[:id]
		"#{id}"
	end

	#UPDATE
	put '/posts/:id' do
		"<h1>PUT</h1>"
	end

	delete '/posts:id' do
		id=params[:id]
		"<h1>PUT</h1>"
	end


end