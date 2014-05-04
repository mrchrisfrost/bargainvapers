require 'securerandom'

def secure_token
	token_file = Rails.root.join('secret')
	if File.exist?(token_file)
		#Use the existing token_file
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

Bargainvapers::Application.config.secret_key_base = secure_token 