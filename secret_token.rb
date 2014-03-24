# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
     File.read(token_file).chomp
  else
     token = SecureRandom.hex(64)
     File.write(token_file,token)
     token
   end
end 









SampleApp::Application.config.secret_key_base = '315120d9fb9620cfe6d2d584bed6cfaf33981ff45374099c5105975373806c7683edc8e8baa38c737802bf9204f6b2a26c8432e4c1e1ddf1c112bdc16cd69af0'
