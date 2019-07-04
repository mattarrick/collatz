def collatz(n)
  array = []
  if n == 1 
    array << 1
  elsif n.even?
    array << n
    array += collatz(n / 2)
  else
    array << n
    array += collatz((3 * n) + 1)
  end
  return array
end

def results
  counter = 1
  len = []
  until counter == 1000000
    cur_seq = collatz(counter)
    if cur_seq.length > len.length
      len = cur_seq
      counter += 1
    else
      counter += 1
    end
  end
  puts "The number with the longest sequence is #{len[0]}.
        The sequence length is #{len.length}"
end


puts results
