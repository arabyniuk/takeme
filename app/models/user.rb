class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # 以下を追記
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>", small:"45x45>"}
  validates_attachment_content_type :avatar, content_type: ["image/jpg","image/jpeg","image/png"]

  has_many :tweets
  has_many :comments

end
