class Memoization
  $uglym = Array.new # Init variables
  $uglym[0] = 1
  $i2 = 0
  $i3 = 0
  $i5 = 0
  $next_multiple_of_2 = 2
  $next_multiple_of_3 = 3
  $next_multiple_of_5 = 5

  def check_next_multiple_of_2  # Check prime factors
    if $uglym.last == $next_multiple_of_2
      $i2 += 1
      $next_multiple_of_2 = $uglym[$i2] * 2
    end
  end

  def check_next_multiple_of_3  # Check prime factors
    if $uglym.last == $next_multiple_of_3
      $i3 += 1
      $next_multiple_of_3 = $uglym[$i3] * 3
    end
  end

  def check_next_multiple_of_5  # Check prime factors
    if $uglym.last == $next_multiple_of_5
      $i5 += 1
      $next_multiple_of_5 = $uglym[$i5] * 5
    end
  end

  def calculate_list(n, count) # Update ugly list
      if count < n
        $uglym.push([$next_multiple_of_2, $next_multiple_of_3, $next_multiple_of_5].min)
        check_next_multiple_of_2
        check_next_multiple_of_3
        check_next_multiple_of_5
        count = count + 1
        calculate_list(n, count) # Recursive call
      end
      $t1m = Time.now
  end

  def time_diff_milli(finish, start) # Elapsed time
    puts "Elapsed time memoization: #{(finish - start) * 1000.0} ms"
  end
end




