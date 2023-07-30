# 1. What is a model ?
#### Why
Without MVC, GUI code has two issues:
1. Mixed up DB code with View code.
2. SQL Queries were written for each CRUD operation in the app, if the driver did not provide an ORM API.
3. All tables were accessible everywhere, resulting in spaghetti code with many arguments in functions.

The goal is to completely abstract away DB calls, and provide the feeling that everything is in RAM.

#### How
1. Provide a consistent API to the **controller**, for all CRUD ops, by modeling each table as a class.
2. Enhance the DB driver to provide an ORM API.
3. Use classes and OOP.

#### What
That's OK. Assuming the DB driver has been enhanced. What all should the model do:
1. Validate data.
2. Do CRUD ops.
3. Talk to 3rd party services if needed for DB ops (both in and out).
4. Has code to run custom queries.
5. This one is Rails specific, to override/enhance existing functions in `ActiveRecord::Base`.

#### Conclusion
Model validates response data, does CRUD ops if needed and returns output to controller.