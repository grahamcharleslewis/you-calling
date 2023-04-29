def blow_your_top(count)
  puts "#{count} : Hello"
  blow_your_top(count += 1) if count < 100
end

blow_your_top(1)