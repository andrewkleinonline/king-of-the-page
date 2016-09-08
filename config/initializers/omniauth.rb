Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET'],
  scope: 'public_profile,email', display: 'popup',
  info_fields: 'first_name,last_name,email',
  image_size: 'large'
end
