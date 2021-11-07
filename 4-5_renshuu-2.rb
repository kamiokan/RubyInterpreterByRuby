require 'minruby'

def evaluate(tree)
  case tree[0]
  when 'lit'
    tree[1]
  when '+'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when '-'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when '*'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  when '/'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  when '%'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left % right
  when '**'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left ** right
  when '=='
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left == right
  when '<'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left < right
  when '>'
    left = evaluate(tree[1])
    right = evaluate(tree[2])
    left > right
  else
    puts "Something Bad!"
  end
end

def main
  str = gets
  tree = minruby_parse(str)
  pp(tree)
  answer = evaluate(tree)
  puts answer
end

main
