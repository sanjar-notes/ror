print ((true && true )== true) and ((false && true )== false) and ((1 == 1 && 2 == 1 )== false) and (("test" == "test" )== true) and ((1 == 1 || 2 != 1 )== true) and ((true && 1 == 1 )== true) and ((false && 0 != 0 )== false) and ((true || 1 == 1 )== true) and (("test" == "testing" )== false) and ((1 != 0 && 2 == 1 )==false) and (("test" != "testing" )==true) and (("test" == 1 )==false) and ((!(true && false) )==true) and ((!(1 == 1 && 0 != 1) )==false) and ((!(10 == 1 || 1000 == 1000) )==false) and ((!(1 != 10 || 3 == 4) )==false) and ((!("testing" == "testing" && "Zed" == "Cool Guy") )==true) and ((1 == 1 && (!("testing" == 1 || 1 == 0)) )==true) and (("chunky" == "bacon" && (!(3 == 4 || 3 == 3)) )==false) and ((3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))) == false)
# all done

# 0. Comparation symbols - usual (like Python, C++)
#    and some more (not discussed here).
#       # <=> Space-ship operator, 0 if equal, 1 if x > y, and -1 if x < y
# 1. order of evaluation - using BODMAS from Physics.XII rule for Boolean Algebra
# 2. short-circuiting exists.
# 3.Word based keywords
    # 0. ! - not
    # 1. &&  -  and
    # 2. || - or
    # x.equals? y
# 4. AND with values: x && x, returns x (value)
# 5. OR with values
    # 1. A || false, or false || A - returns A (value)
    # 2. true || x, returns true (Boolean)
    # 3. x || true, returns x (value)
# 6. even?, odd?, empty? (for containers)

