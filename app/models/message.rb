class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :sender, class_name: User

  delegate :image, :first_name, to: :sender, prefix: true, allow_nil: true

  def sender
    super || User.new(first_name: "Missing Sender")
  end
end
