# 1. From Zero to deploy
Created Monday 20 December 2021

#### 1. Setup
- Install Ruby, Rails and other stuff.

#### 2. Hello, world [app](https://github.com/exemplar-codes/hello-world-rails-app)
* Bundler: it's a gem file installer. Config is at /Gemfile.
* `rails s` starts the local server.
* MVC basics. 
	* Browser request to router, router to controller. 
	* Controller (a class) calls Model. Stores data as it's instance variable.
	* View can access all controller instance variables. Uses ERB templates to template stuff.

#### 3. Deploying the hello, world app
* Using free-tier of `heroku`.
* Signup to heroku, download `heroku CLI`, authenticate.
* Go to app repo and run `heroku create` to create an app on `heroku`. This adds `heroku` as a `git remote`.

Hmm, but heroku doesn't support `sqlite3`, so change app's `Gemfile` to use Posgres for "production".

* Update `Gemfile.lock` using `bundle install --without production`. This skips installation production gems, as they're not needed for development locally.
* Push to `heroku`, using `git push heroku master`.

Site is now accessible over the Web using heroku's URL.
