class Photo < ActiveRecord::Base
  belongs_to :place
  
  mount_uploader :picture, PictureUploader

  u = User.new
  u.picture = params[:file] # Assign a file like this, or

# like this
File.open('somewhere') do |f|
  u.picture = f
end


  u.save!
  u.picture.url # => '/url/to/file.png'
  u.picture.current_path # => 'path/to/file.png'
  u.picture_identifier # => 'file.png'


# TODO: u.picture will never return nil, even if there is no photo associated to it. 
#To check if a photo was saved to the model, use u.picture.file.nil? instead.
