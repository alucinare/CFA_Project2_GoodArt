class Artist < ApplicationRecord

  belongs_to :user
  has_many :arts

  has_attached_file :profilepic, styles: {large:"600x600>", medium: "300x300>", thumb: "150x150#"}
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\z/

end
