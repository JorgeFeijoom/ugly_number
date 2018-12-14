class Tabulation
  def getNthUglyNo(n)

    ugly = Array.new(n)
    ugly[0] = 1

    i2 = 0
    i3 = 0
    i5 = 0

    next_multiple_of_2 = 2
    next_multiple_of_3 = 3
    next_multiple_of_5 = 5

    for l in 1..n

      ugly[l] = [next_multiple_of_2, next_multiple_of_3, next_multiple_of_5].min

      if ugly[l] == next_multiple_of_2
        i2 += 1
        next_multiple_of_2 = ugly[i2] * 2
      end

      if ugly[l] == next_multiple_of_3
        i3 += 1
        next_multiple_of_3 = ugly[i3] * 3
      end

      if ugly[l] == next_multiple_of_5
        i5 += 1
        next_multiple_of_5 = ugly[i5] * 5
      end

    end

    return ugly[-2]
  end
end
c = Tabulation.new
print c.getNthUglyNo(150)