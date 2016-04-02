
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '1357150584310400', 'a67d5869a46cb23b25aebe690ed69307', scope: "email,publish_actions, user_friends, user_likes, user_posts"
  provider :facebook, '1097221353655855', '4f1d87e1a0f077e64b9f96ab1b3665dd', scope: "email,publish_actions, user_friends, user_likes, user_posts"
  provider :twitter,Rails.application.secrets.twitter_api_key,Rails.application.secrets.twitter_api_secret
  
end

