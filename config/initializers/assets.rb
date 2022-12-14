# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.js popper.js  )
Rails.application.config.assets.precompile += %w( application.scss )
Rails.application.config.assets.precompile += %w( ripple/jquery.ripples.js )
Rails.application.config.assets.precompile += %w( app.js )
Rails.application.config.assets.precompile += %w( animated/headline.js )
Rails.application.config.assets.precompile += %w( animated/headline.css )
Rails.application.config.assets.precompile += %w( controllers/application.js )
Rails.application.config.assets.precompile += %w( controllers/hello_controller.js )
Rails.application.config.assets.precompile += %w( controllers/index.js )
Rails.application.config.assets.precompile += %w( counter/jquery.counterup.min.js )
Rails.application.config.assets.precompile += %w( counter/waypoints.min.js )
Rails.application.config.assets.precompile += %w( filter/isotope.pkgd.min.js )
Rails.application.config.assets.precompile += %w( filter/jquery.magnific-popup.min.js )
Rails.application.config.assets.precompile += %w( filter/magnific-popup.css )
Rails.application.config.assets.precompile += %w( filter/masonry.pkgd.min.js )



Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'javascripts')
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
Rails.application.config.assets.paths << Rails.root.join("node_modules/bootstrap-icons/font")
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'stylesheets')

# Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'javascript', 'packs')
# Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'javascript', 'packs', 'nested-forms')