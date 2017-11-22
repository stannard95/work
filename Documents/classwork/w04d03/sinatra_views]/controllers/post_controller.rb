class PostsController < Sinatra::Base

	configure :development do
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")

	set :views, Proc.new { File.join(root, 'views') }


  	#NEW
	post '/posts' do
		new_post = Post.new
    new_post.title = params[:title]
    new_post.body = params[:body]
    new_post.save
    redirect "/posts"
	end

	get '/posts' do
		@page_header = "All the posts"
    @posts = Post.all
		erb :"posts/index"
	end

	get '/posts/new' do
		erb :"posts/new"
	end


  #Gets the element
  get '/posts/:id' do
    @post = Post.find(params[:id]) #Creates element, accesses it from $posts
    erb :"posts/show" #file path for page
  end


	#EDIT
  	get "/posts/:id/edit" do
  		@post = Post.find(params[:id])

  		erb :"posts/edit"
  	end

  	put "/posts/:id" do
  		id = params[:id]
      post = Post.find(params[:id])
      post.title = params[:title]
      post.body = params[:body]
      post.save

      redirect "/posts/#{post.id}"
  	end

  #DELETE
  delete "/posts/:id" do
    id=params[:id]
    Post.destroy(id)
    redirect "/posts"
  end

end