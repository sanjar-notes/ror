# 2. Toy App - Models, Views
Created Monday 20 December 2021

#### 1. Planning the app
- Create an app called [toy-app-rails](https://github.com/exemplar-codes/toy_app_rails) using the same steps as in the [[1_From_Zero_to_deploy |previous]] chapter.
- This app is a Twitter clone, well kind of. It has two datum:
	- **Users** (id: integers, email: string, name: string)
	- **MicroPosts** (id: integer, content: text, user_id: integer). We're using `text` instead of `string` (255 chars) for flexibility in content size, if a change is needed later.
	- Each post is associated with a author(user). i.e. `user_id` of micropost is the author's `id`.
- Generate `Users` Model using [scaffold](obsidian://open?vault=rubyon-rails&file=3.%20Scaffolding) generator

#### 2. The Users Resource
* Bundler: it's a gem file installer. Config is at /Gemfile.
* `rails s` starts the local server.
* `rails c` (c for _console_) is used to run code on the server, without the GUI. Used for debugging.
* MVC basics. 
	* Browser request goes to router, router decides controller (and controller action) based on **URI**.
	* Controller action calls Model functions and stores data as it's instance variables.
	* Model has code to interact with the database. This code is provided by Rails, and doesn't need to be touched, generally.
	* View can access all controller instance variables. Uses ERB templates to template stuff.

#### 3. MVC in action
* A detailed walkthrough of what happens in a HTTP request-response cycle.
* In this case with the `Users` resource.

![](Pasted%20image%2020211220102516.png)

* Also, an important note from the author: Some references indicate that the view returns the HTML directly to the browser (via a webserver such as Apache or Nginx). Regardless of the implementation details, I find it helpful to think of the controller as a central hub through which all the application’s information flows.
* REST architecture and default (named) actions for a controller (`UserController` here).

![](Pasted%20image%2020211220104700.png)

* A controller has some closely related functions (generally 7), named as above. These are called controller '**actions**' 4 of them generate views, the other 3 don't generate views (they're end after DB operations).
* A controller called `ApplicationController` inherits from the `ActiveController::Base`. All other models inherit from the `ApplicationController`. Examples:
```ruby
class ApplicationController < ActionController :: Base
	
end

class UserController < ApplicationController
	
end

class ItemController < ApplicationController
	
end
```

* For models - the `ApplicationRecord` class inherits from `ActiveRecord::Base` class (this provides DB driver, parses columns to Ruby attributes, generates SQL queries). All other model inherit from the `ApplicationRecord` class. This is the same as how controllers inherit from classes provided by Rails.

![[Pasted image 20211230163542.png]]
![[Pasted image 20211230163728.png]]
#### 4. Weaknesses of this `Users` Resource
* No data validations - I could create users without specifying email or name or both. Not good.
* No authentication - there's no security. Anyone can access any user, and modify it. CIA triad (Confidentiality is non-existent).
* No styles - looks bland.
* No tests - well, the scaffold has *some* tests, but doesn't have place for custom tests, or authentication.
* **No real understanding/learning** - scaffolding is awesome, but it's very bad for learning something.


#### 5. The `MicroPosts` Resource
* Generate a scaffold using `rails generate scaffold Micropost content:text user_id:integer`, and run `rails db:migrate` to create a table.
* After creating a micropost, a green message appears. It is a `p` tag with an `id` of 'notice'. This is called a Flash in Rails, it's a one time message from the server.
* [[4_MVC/Model/2_Validations |Validating]] models. Validation of data (models) can be done in model files. Example, to set maximum limit of 140 chars for a MicroPost, a validation can be added in `app/models/MicroPosts.rb` file, like so:

```ruby
class MicroPosts < ApplicationRecord
	validates :content, length: {maximum: 140} # content field maximum length
end
```

This will create an error when the user clicks 'Create Post', if more than 140 chars have been entered. Basically, a **write** to the DB is not allowed.
* [[4_MVC/Model/3_Associations in models |Associations]]: An instance of a model could be related to many instances of other model. *This is simplied as 'a model is related to other model', for brevity.* 
	* Example: In this app, there are two tables - microposts and users. A user may have many microposts. Also each micropost is also related to one user. 
	* Here, the relation is bi-directional, but it's not always the case.
	* To specify this "association", changes are made to the model (i.e. model class), like so:

	```ruby
	class User < ApplicationRecord
		has_many :microposts
	end

	class MicroPost < ApplicationRecord
		belongs_to :user
		# omitted the validations code, as it's irrelevant
	end
	```
	
	Result: A foreign key is placed in both tables.
###### Using associations
Associations make it very easy to access related info from model objects. Like so:
```ruby
# in controller
@user = User.first;
@posts = @user.microposts # access all microposts for a user

@firstpost = @posts.first # first users first mpost

@mpost = Micropost.first;
@author = @mpost.user; # first microposts author
```

#### Conclusion - Strengths
In this chapter, I learnt:
- High level overview of Rails
- Intro to MVC
- REST architecture
- Data modeling into
- Live DB backed web app
- Rails console.

#### Conclusions - Weaknesses
- No custom layout or styling
- No static pages (Home/About etc)
- No user passwords
- No user images
- No logging in
- No security
- No automatic user/micropost assoictaion
- Following/Followed notion absent.
- No feed
- No real understanding