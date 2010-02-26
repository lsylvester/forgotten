# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_remind_session',
  :secret      => '79baccfe3be55d1af542d5539529a8c2618a26ffdc45e542618ab3a8f6f22a581ffcf907e49b2169918b8e91172642a726c0c398bf6ed953b57176824ec30440'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
