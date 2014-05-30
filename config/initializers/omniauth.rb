OmniAuth.config.logger = Rails.logger


#Rails.application.config.middleware.use OmniAuth::Builder do
#  config = YAML.load(File.open("#{Rails.root}/config/omniauth.yml"))[Rails.env]
#  provider :facebook, config[:facebook][:api_id], config[:facebook][:api_secret], {:provider_ignores_state => true}
#end