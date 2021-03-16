web: bundle exec rails s
RAILS_ENV=production RAILS_SERVE_STATIC_FILES=yes rails s -b 0.0.0.0 -p 3000

release: bin/rake db:migrate
release: bin/rake db:seed