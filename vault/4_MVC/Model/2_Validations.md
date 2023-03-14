# Validations

### Why
Data Validations are nothing but constrains on the data in a model
These need to be enforced somehow. Examples of 'validations' are allowing non-empty strings, validating an email etc.

### How
Data validations can be made at 3 logical levels:
1. SQL constraints - Database dependent.
2. Model level (class) - DB agnostic, View agnostic.
3. View level, i.e. HTML5, JS validations at input time - backend coupled with front-end.

So the best way is to use model level validations. It may be used to generate View validations as well as DB constraints.

Rails does exactly this. It uses data validations at the model level.

An error is raised when putting data into models, and is shown. Note that this is not view level validation still.

![[2_Validations-image-1.png]]
 

### What
Syntax for validations - use `validates` followed by data and the validation.
```ruby
class User
	validates :name, presence: true
	# name can't be empty
end

class Micropost
	validates :content, length { maximum:140 },
						presence: true
	# post length within 140 and can't be empty
end
```

### Conclusion
Data validations are specified in models, in Rails.