require "slim"

# Blogging plugin
activate :blog do |blog|
  blog.prefix = "articles"
end

# Default layout
page "*", :layout => "default"

# Blog layout
page "articles/*", :layout => :article

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
activate :livereload

# Pretty URLs
activate :directory_indexes

# Directories
set :css_dir, "assets/stylesheets"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"
set :partials_dir, "layouts/partials"

# Use relative URLs
activate :relative_assets
set :relative_links, true

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css

  # Minify HTML on build
  activate :minify_html

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Compress PNGs
  require "middleman-smusher"
  activate :smusher

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
