
class Number

  def sum(x,n,epsilon)
    res = 0.0
    if n > 0
      for i in 0..n
        res +=((2.0*i + 1.0)/factorial(i)) * x**(2.0*i)
      end
    else
      delta = 1.0
      i = 0
      while delta >= epsilon
        delta = ((2.0*i + 1.0)/factorial(i)) * x**(2.0*i)
        res += delta
        i += 1
      end
    end
    return res.round(7)
  end

  def factorial n
    n > 1 ? n * factorial(n - 1) : 1
  end

  def start
    puts "Enter x:"
    x = gets
    puts "Enter n"
    n = gets
    puts "Enter epsilon"
    epsilon = gets
    x,n,epsilon  = x.to_f,n.to_f,epsilon.to_f

    #якщо n < 0 то буде рахувати з точністю епсілон, інакше до n
    if (x >= 0.1 && x <= 1.0) || ( n >= 10 && n <= 58)
      puts (sum(x,n,epsilon))
      return 1
    else
      puts "Error!"
      return -1
    end
  end
end
number = Number.new
number.start
