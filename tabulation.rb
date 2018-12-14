class Tabulation
  def getNthUglyNo(n)
    $uglyp = Array.new(n) # Init variables
    $uglyp[0] = 1
    i2 = 0
    i3 = 0
    i5 = 0
    next_multiple_of_2 = 2
    next_multiple_of_3 = 3
    next_multiple_of_5 = 5

    for l in 1..n
      $uglyp[l] = [next_multiple_of_2, next_multiple_of_3, next_multiple_of_5].min # Get min value

      if $uglyp[l] == next_multiple_of_2 # Check prime factors
        i2 += 1
        next_multiple_of_2 = $uglyp[i2] * 2
      end

      if $uglyp[l] == next_multiple_of_3 # Check prime factors
        i3 += 1
        next_multiple_of_3 = $uglyp[i3] * 3
      end

      if $uglyp[l] == next_multiple_of_5 # Check prime factors
        i5 += 1
        next_multiple_of_5 = $uglyp[i5] * 5
      end
    end
    $t1t = Time.now # end time procedure
  end

  def time_diff_milli(finish, start) # Elapsed time
    puts "Elapsed time tabulation: #{(finish - start) * 1000.0} ms"
  end
end