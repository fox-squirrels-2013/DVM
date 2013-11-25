module ApplicationHelper
  def voted_memes
    return cookies[:voted_memes].split('').map{|n| n.to_i} if cookies[:voted_memes]
    []
  end

  def voted_memes_add(meme_id)
    if cookies[:voted_memes] 
      cookies[:voted_memes] += @caption.meme_id.to_s
    else
      cookies[:voted_memes] = @caption.meme_id
    end
  end 
end
