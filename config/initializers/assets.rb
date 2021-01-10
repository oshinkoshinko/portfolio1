# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Refile.secret_key = 'eba60a25a414666d0e3c76a684cb68c7d3a889518ac9ba9d12f1be8602e13545fb484c2dd03f97d1caf378742183c9f98c11a49e1a0de080e468e0a5d4089ea2'
