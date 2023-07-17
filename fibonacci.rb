def fibo_rec(n, sequence = [0, 1])
  return sequence if n <= 2

  sequence << sequence[-1] + sequence[-2]
  fibo_rec(n - 1, sequence)
end

puts fibo_rec(8)
