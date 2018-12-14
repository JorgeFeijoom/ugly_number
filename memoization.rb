class Memoization
  $ugly = Array.new
  $ugly[0] = 1
  $i2 = 0
  $i3 = 0
  $i5 = 0
  $next_multiple_of_2 = 2
  $next_multiple_of_3 = 3
  $next_multiple_of_5 = 5

  def check_next_multiple_of_2
    if $ugly.last == $next_multiple_of_2
      $i2 += 1
      $next_multiple_of_2 = $ugly[$i2] * 2
    end
  end

  def check_next_multiple_of_3
    if $ugly.last == $next_multiple_of_3
      $i3 += 1
      $next_multiple_of_3 = $ugly[$i3] * 3
    end
  end

  def check_next_multiple_of_5
    if $ugly.last == $next_multiple_of_5
      $i5 += 1
      $next_multiple_of_5 = $ugly[$i5] * 5
    end
  end

  def calculate_list(n, count)
      if count < n
        $ugly.push([$next_multiple_of_2, $next_multiple_of_3, $next_multiple_of_5].min)
        check_next_multiple_of_2
        check_next_multiple_of_3
        check_next_multiple_of_5
        calculate_list(n, count+1)
      end
  end

end

c = Memoization.new
c.calculate_list(150, 0)
print $ugly[-2]




