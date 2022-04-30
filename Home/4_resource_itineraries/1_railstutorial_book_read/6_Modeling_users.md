# 5. Modeling users
- [ ] in vault

###### Why data models?
For persistence of data. Unlike primary memory.

###### What is a data model?
- A data model is a data structure for persistence storage of data.
- A data model is usually accompanied by APIs that help in working with the model.

###### Persistence in Rails
- Rails defines a class called `ActiveRecord` that interacts with the database (both DDL and DML parts).
- The `ActiveRecord` is a layer of abstraction on top of DDL and DML of the database. It is also database agnostic, meaning the database can be changed but app code is not affected.
- Of course, `ActiveRecord` is used in conjunction with a DB `gem`. So that: 
		(low level) DB <--> DB gem <--> `ActiveRecord` <--> app code (high level)
- Because of `ActiveRecord`, there's no need to work with SQL for DML stuff, although is still doable, if needed. One can just use the `ActiveRecord`'s API.
- Rails uses a relational type of database by default. The exact low level DB (SQLite, PostgreSQL, MySQL etc can be selected via the DB gem).

###### Database migrations, an intro
- This refers to the feature in Rails where DDL is replaced with pure Ruby code.
- So there's no need to write SQL DDL.

###### Creating the user model
generate command, schema file on page 298 and migration. FIXME
model class file doesn't store attributes. FIXME

###### ActiveRecord API for records
- Create
	- `User.new()` - returns a new record object with `nil` values. This is in primary memory.
	- `User.new(col1: val1, col2: val2...)` - returns a new record object with the specified values. This is in primary memory.
	- `robject.save` - saves the created object to database.
		Note: use `.create(col1: val1, ...)` to create and save a record in one go.
- Read
	- `User.all` - returns an array of all record objects.
	- `User.first`, `.second` and `.last` can be used to get those record objects from the table.
	- `User.find(arg)` - searches by `id`, returns record object. Returns `nil` if not found.
	- `User.find_by(column1: value1, column2: value2...)` - finds a matching record. Basically an WHERE EQUALS SQL query.
	- Working with Record objects - Just change them like class objects or Hashes. They're just key value pairs anyway.
- Update
	1. Extract the record to be edited, using `User.find` or `User.all`
	2. Change attributes (except `id`), just like classes. There are two ways here:
		- Change each attribute as a statement. Example: `robject.name=x`, `robject.email=y`
		OR
		- Change all at once using. `robject.update(col:val, col:val)` as needed. 
	3. Save using `robject.save`.
- Delete
	- Find the record
	- Do `robject.destroy` on the record object. It'll be deleted from the table (if it exists). It returns the object for one last use.

###### User validations
- Why
	- The `rails g model` command specifies the data type. This is not enough for most applications.
	- Validations are server-level conditions which must be true for a DB operation to be performed. They are server level stuff, not DB level.
	- The constraints I'm talking about here mean uniqueness, length in case of strings, nullity, email type, password and other constraints of a field.
	- This helps in saving only valid records to the database.
	- Rails also provides many in built validation logic, known as 'Validation helpers'.
- How
	- Validations are specified in model class files. Like so:
	```ruby
	class User < ApplicationRecord
		validates :name, presence: true
		# OR
		validates(:name, {presence: true})
		# i.e.
		validates(col_name, optionsHash)
	end
	```
	- Working with validations. If a record object is invalid, it will not be saved to the DB. `robject.save` will return false.
	- To check if an robject is valid, use `robject.valid?`. To check invalid, use `robject.invalid?`.
	- To see the validation errors, use `robject.errors.full_messages`, and to see if a specific attribute has failed, check `robject.errors[:attributeName]`.
	
###### Email validation (regex)
For validating email, I'm using REGEX. So in `app/model/user.rb`, add
```ruby
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, format: { with: VALID_EMAIL_REGEX }
```

###### Uniqueness validation
```ruby
validates :email, uniqueness: true
```
We want email addresses to be unique. So, "unique" validation alone won't work, we also want uniqueness to be case insensitive. The code
```ruby
validates :email, uniqueness: { case_insensitive : false }
```

###### Custom validation method
One can write a custom method for validation. One can reference the model attributes as attribute variable names, i.e. `self.email` or `self.name` etc. The syntax is simple:
```ruby
validates :custom_validation_method

def custom_validation_method
	return true # if valid, return false if invalid
end
```
Note that this does require the model attribute to be made readable using `attr_accessible`.

###### Adding model hooks (callbacks)
Some additional functions which are don't required to be explicitly called (i.e. hooks) can be specified in the model files. There are many types of hooks, they are basically attached to the lifecycle of the model and its operations - validation, creation, updation, deletion, save, or loaded from database. Some examples:
1. `before_validation`
2. `before_create`
3. `before_save`
4. `before_update`
5. `after_create`
6. `after_save`
7. `after_update`

Note that we can write to the model names too, here.

Code example - `user.rb`:
```ruby
before_validation :sanitize_name

def sanitize_name
	self.name = self.name.strip()
end
```

This really enhances the bulky model, skinny controller quality of a MVC codebase, since all model level code is kept inside the model, the controller doesn't have to worry about the data at all.

###### Making validations and callbacks conditional
Validations and callbacks can be made conditional by adding an `:if` , `:unless` argument in the validation/callback call. Example:
```ruby
class Order < ActiveRecord::Base
  validates :card_number, :if => :paid_with_card?

  def paid_with_card?
    payment_type == "card"
  end
end
```
Sometimes it is useful to have multiple validations use one condition, and it can be done via the `with_options` keyword. Example:
```ruby
class User < ActiveRecord::Base

  with_options :if => :is_admin? do |admin| # condition
    admin.validates :password, :length => { :minimum => 10 } # validation 1
    admin.validates :email, :presence => true # validation 2
  end
  
end
```
###### Skipping validations and model hooks (callbacks)
There are methods in the ActiveRecord API for manipulating objects that will skip validations and callbacks. These methods should be used carefully, as they can lead to an inconsistent state of the app, or invalid data being added to the database.

---
For more info on validation_helpers and hooks, see the [official guide](https://guides.rubyonrails.org/v3.2/active_record_validations_callbacks.html).