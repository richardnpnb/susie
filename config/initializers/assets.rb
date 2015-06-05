# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# #00425 - Added foillowing line cos of this error: http://stackoverflow.com/questions/22970573/asset-filtered-out-and-will-not-be-served-add-config-assets-precompile
Rails.application.config.assets.precompile += [/.*\.js/,/.*\.css/]