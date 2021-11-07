require 'minruby'

def max(tree)
  if tree[0] == 'lit'
    tree[1]
  else
    left = max(tree[1])
    right = max(tree[2])
    left > right ? left : right
  end
end

def main
  str = gets
  tree = minruby_parse(str)
  pp(tree)
  puts max(tree)
end

main
