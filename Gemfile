source 'https://rubygems.org'

ruby '2.7.1'

gem 'bundler'
gem 'jekyll'
gem 'rack-jekyll', git: 'https://github.com/adaoraul/rack-jekyll', ref: 'e6ae4a588c2d881bccc35368e9cc81fe745a2b99'
gem 'kramdown'
gem 'jekyll-multiple-languages-plugin'
gem 'puma'

group :test, :production do
  gem 'html-proofer'
  gem 'capybara'
  gem 'rake'
  gem "rspec", "~> 3.10"
  gem 'fastimage'
end
