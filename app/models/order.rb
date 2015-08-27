class Order < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader

	acts_as_taggable
	acts_as_commentable
	 validates :price, :presence => true
	 validates :title, :presence => true
end
