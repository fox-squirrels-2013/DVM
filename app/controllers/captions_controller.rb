class CaptionsController <ApplicationController
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
    @caption.votes +=1
    @caption.save
    render :partial => "/captions/newly_added", :locals => {:caption => @caption}
  end


end
