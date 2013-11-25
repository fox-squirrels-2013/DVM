class Meme < ActiveRecord::Base
  attr_accessible :title, :image_url, :public_id,
  :width, :height, :format
  has_many :captions
end