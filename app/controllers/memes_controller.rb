class MemesController < ApplicationController

  def index
    @memes = Meme.all
    @meme = Meme.new
  end

  def create
    clres = Cloudinary::Uploader.upload(params[:meme][:image_url])
    @meme = Meme.create(title: params[:meme][:title], image_url: clres["url"],
      public_id: clres["public_id"], height: clres["height"], width: clres["width"],
      format: clres["format"])
    redirect_to meme_path(@meme)
  end

  def new
    @meme = Meme.new
  end

  def show
    @meme = Meme.find(params[:id])
    @captions = @meme.captions.order("votes DESC")
  end

end
