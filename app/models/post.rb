class Post < ActiveRecord::Base
    mount_uploader :img_name, HbUploader
end
