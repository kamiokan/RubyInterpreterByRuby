require 'minruby'

tree = minruby_parse("1+2*4")
p(tree)

tree2=minruby_parse("(1+2)/3*4*(56/7+8+9)")
pp(tree2)
