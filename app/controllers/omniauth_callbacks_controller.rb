class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = FindOrCreateOauthUser.call(auth_data: env['omniauth.auth']).user

    sign_in_and_redirect user, event: :authentication
    set_flash_message(:notice, :success, kind: 'Facebook')
  end
end
