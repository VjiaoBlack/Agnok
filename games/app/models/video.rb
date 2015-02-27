class Video < ActiveRecord::Base
    attr_accessible :name, :video

    validates :name, presence: true

    do_not_validate_attachment_file_type :video


    has_attached_file :video


end
