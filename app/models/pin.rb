class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  validates :description, presence: true
  has_attached_file :image, styles: { medium: "320x240"}
  validates_attachment :image, presence: true,
                           content_type: {content_type: ['image/jpeg', 'image/jpg', 'image/gif'] },
                           size: { less_than: 5.megabytes }

  belongs_to :user
end
