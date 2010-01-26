# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_classifier_rails_example_session',
  :secret      => '6bcf69642476991e7e2f43905bc75c22acff96e7b9914402fc93ffb3afdb3d7be2ad9d51302c31caaced9fd2e348a7efc4cc7e8e7a8ffc65bfbc365b92ae2e42'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
