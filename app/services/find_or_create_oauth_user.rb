class FindOrCreateOauthUser
  include Interactor

  def call
    context.user = find_user || create_user
  end

  private

  def find_user
    User.find_by(email: auth_data.info.email)
  end

  def create_user
    user = User.new(user_attributes)

    user.image = URI.parse(auth_data.extra.raw_info.picture.data.url)

    user.skip_confirmation!
    user.save!

    user
  end

  def user_attributes
    {
      email: auth_data.info.email,
      password: Devise.friendly_token[0, 20],
      first_name: auth_data.info.first_name,
      last_name: auth_data.info.last_name,
      sex: auth_data.extra.raw_info.gender
    }
  end

  def auth_data
    context.auth_data
  end
end
