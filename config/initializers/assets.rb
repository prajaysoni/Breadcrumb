# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
  Rails.application.config.assets.precompile += %w( trail-map.js )
  Rails.application.config.assets.precompile += %w( crumb-map.js )
  Rails.application.config.assets.precompile += %w( active-map.js )
  Rails.application.config.assets.precompile += %w( fireflies.js )
  JsAssets::List.allow << '*.png'
  Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
