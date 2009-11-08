# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_inshitu_session',
  :secret      => 'db75ce8ef56a5f5ff8cea01b8f57c7bfd5f03d55c1221cc43b2e608aa8b9c01b49f49b18c681065050a1dde546c8c90d1e00a21f18ac8151498ecbcfed95caa8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
