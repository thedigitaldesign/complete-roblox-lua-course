-- 04 Relation & logical

-- Relational: < > <= >= == ~=(not equal)
-- Logical: AND, OR, NOT

test = 3 < 20

string1 = "Hello"
string2 = "Hello"
comparing = string1 == string2
print(comparing)

x = comparing and test
-- print("x AND is", x)

x = comparing or test
-- print("x OR is", x)

x = comparing and not test
-- print("x AND NOT is", x)
