class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "noimageavailable.png"
  
  # Paperclip 4 onwards require validation of image and content type
  # or explicitly telling that there will be no validation which is
  # not recommended
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
