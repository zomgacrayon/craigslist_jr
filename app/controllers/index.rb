get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :index
end

# List categories
get '/categories/:id/posts' do
  @category = Category.find(params[:id])
  @posts = @category.posts
  erb :showcategory
end

# Show post

get '/posts/:id' do
@post = Post.find(params[:id])
erb :showpost
end

# New Post
get '/categories/:category_id/posts/new' do
  @category = Category.find(params[:category_id])
  erb :newpost
end

post '/categories/:category_id/posts' do
  @category = Category.find(params[:category_id])
  post = @category.posts.build(params[:post])
  if post.save
    redirect to("/categories/#{@category.id}/posts")
  else
    redirect to("/categories/#{@category.id}/new")
  end
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :editpost
end

put '/posts/:id' do
  puts params
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])

  redirect to("/posts/#{@post.id}")
end