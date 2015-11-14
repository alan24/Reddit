# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Reddit::Application.config.secret_key_base = 'cc2c39ef713fc5d758b89f1616d423ca60550cc73090962227ac29f7df1825ab07b80678257501805062ffb4d3d78aa1df0edb247067e32627f42ee36293c329'
