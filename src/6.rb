def fibonacci(count, seq = [1, 1])
  return seq if count <= seq.size
  seq << seq[seq.size - 1] + seq[seq.size - 2] 
  seq = fibonacci(count, seq) if seq.size - 2 < count
  seq
end 
