class PostsController < ApplicationController
  
  def index
    @posts = Post.where({ user_id: session[:user_id] })
    @post = Post.new
  end
  
  def new
    @post = Post.new
    @place = Place.find(params["place_id"])
    @post.place_id = @place.id
  end

  def create
    @post = Post.new(params["post"])
    @post.save
    redirect_to "/places/#{@post.place.id}"
  end



end
