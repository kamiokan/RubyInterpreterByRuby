def main
  node1 = ["節1", ["節2", ["葉A"], ["節3", ["葉B"], ["葉C"]]], ["葉D"]]
  preorder(node1)
end

def preorder(tree)
  if tree[1] == nil
    p(tree[0]) # 各部分木でやりたい処理
  end
  if tree[0].start_with?("節")
    preorder(tree[1])
    preorder(tree[2])
  end
end

main
