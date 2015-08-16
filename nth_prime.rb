def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  x = 0

  y = 2
  while true
    if is_prime?(y)
      x += 1
      if x == n
        return y
      end
    end

    y += 1
  end
end

