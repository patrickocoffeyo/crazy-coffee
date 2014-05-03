matchedH = (s) ->
  m = s.length >> 1
  l = s.substring(0,m)
  r = s.substring(m,s.length)
  switch s.length
    when 0 then [0,0]
    when 1
      if s == "(" then [0,1] else [1,0]
    else
      [i,j] = matchedH l
      [k,l] = matchedH r
      if j > k then [i,l+j-k] else [i+k-j,l]
matched = (s) ->
  [x,y] = matchedH s
  (x is 0) and (y is 0)
console.log matched "(())))(((((((())))))))))))))((((((()))))))))(((((((((((((())))))))))))))"
console.log matched "("
console.log matched ")"
console.log matched "()()()()()()()"
console.log matched ""
