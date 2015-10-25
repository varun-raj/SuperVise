class Post < ActiveRecord::Base
  belongs_to :student
  mount_uploader :attachment, AvatarUploader

  auto_html_for :message do
    html_escape
    image
    twitter
    google_map
    youtube(:width => 400, :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end

end
