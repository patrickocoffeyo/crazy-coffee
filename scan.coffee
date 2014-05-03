# for associative f, base case b, and array s
# scan (f,b,s) is equivalent to
#   [partials, sum]
#   where partials = [b, f(b,s[0]), f(f(b,s[0]),s[1]), f(f(f(b,s[0]),s[1]),s[2]), ...]
#   and sum = f(partials[s.length-1],s[s.length-1])
# if |s| = 0, scan (f,b,s) = [[], b]
scan = (f,b,s) ->
  switch s.length
    when 0 then [[], b]
    when 1 then [[b], f b, s[0]]
    else
      n = s.length
      contract = (i) -> if i is ~~(n/2) then s[i*2] else f s[i*2], s[(i*2)+1]
      expand = (i) -> if i%2 then f r[~~(i/2)], s[i-1] else r[~~(i/2)]
      [r, res] = scan f, b, [0...~~((n+1)/2)].map contract
      [([0...n].map expand), res]
addV = ([x, y], [z, t]) -> [x+z, y+t]
console.log(scan addV, [0, 0], [1...100].map ((i) -> [i, i*2]))