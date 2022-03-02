# 1. RESTful Controller
There 7 REST commands, based on HTTP, in all:
1. GET
	1. one-specific resource. (**show**)
	2. all, list of. (**index**)
	3. New page form/template (**new**)
	4. Edit page form (**edit**)
2. POST
	1. Create new command. (**create**)
3. PATCH/PUT
	1. Apply updates command (**update**)
4. DELETE
	1. Delete _specific_ resource (**destroy**)

That's about REST.

Now, in Rails, the scaffold creates these functions (in parentheses) as methods in the controller class. These methods are called _'controller actions'_.