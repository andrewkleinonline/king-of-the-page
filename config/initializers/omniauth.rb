Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'],
  scope: 'public_profile,email', display: 'popup',
  info_fields: 'first_name,last_name,email',
  image_size: 'large'
end
