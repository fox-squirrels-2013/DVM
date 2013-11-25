class CaptionsController <ApplicationController
  include ApplicationHelper
  def create
    @caption = Caption.new
  end

  def new
    @caption = Caption.new
  end

  def create
    @caption = Caption.create(params[:caption])
    render :partial => "/captions/newly_added", :locals => {:caption => @caption}
  end

  def update
    @caption = Caption.find(params[:id])
    if voted_memes.include?(@caption.meme_id)
        flash[:already_voted] = true
        render :partial => "/captions/newly_added", :locals => {:caption => @caption}
    else
      @caption.votes +=1
      @caption.save
      voted_memes_add(@caption.meme_id)
      render :partial => "/captions/newly_added", :locals => {:caption => @caption}
    end
  end
end
