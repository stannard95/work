require 'pg'


class Post

	attr_accessor :id, :title, :body

	def self.open_connection
		PGconn.connect( dbname: "my_blog" )
	end

	#index

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM post;"
		results = conn.exec(sql)
		posts = results.map do |record|
			self.hydrate(record)
		end
		posts
	end

	def self.hydrate post_data
		post = Post.new
		post.id = post_data['id']
		post.title = post_data['title']
		post.body = post_data['body']
		post
	end

	#show

	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM post WHERE id = #{id}"
		posts = conn.exec(sql)
		post = self.hydrate(posts[0])
		post
	end

#create
	
	def save
		conn = Post.open_connection
		if (!self.id)
			sql = "INSERT INTO post (body, title) VALUES ('#{self.body}', '#{self.title}')"
		else
			sql = "UPDATE post SET title = '#{self.title}', body = '#{self.body}' WHERE id = #{self.id}"
			
		end

		conn.exec(sql)
	end

#update

#delete
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM post WHERE id = #{id}"
		conn.exec(sql)

	end


end


puts Post.all
puts Post.destroy(2)
puts "HELLO"
puts Post.all


# new_post = Post.new
# new_post.title = "keir title"
# new_post.body = "keir body"
# new_post.save
# puts Post.all

# post = Post.find 1
# puts post.title

# post.title = "Something newer"

# post.save

# puts Post.find(1).title








