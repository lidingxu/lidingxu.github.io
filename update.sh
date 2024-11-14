# Run bundle install to install ruby dependencies. If you get errors, delete Gemfile.lock and try again.
bundle exec jekyll build
git add .
git commit -m "$1"
git push
cd _site/
git add .
git commit -m "$1"
git push

