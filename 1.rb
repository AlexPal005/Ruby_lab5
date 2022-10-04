class Integral

  def prm(a,b,f,n)
    h = (b-a)/n
    res = 0

    for i in 1..n
      fx = eval (f + "(" +"a+"+ i.to_s+" * h - h/2 )")
      res +=  fx
    end
    return (h * res).round(10)
  end

  def trp(a,b,f,n)
    h = (b-a)/n
    res = (eval (f + "("+a.to_s+")"+"+"+ f + "("+b.to_s+")"))/2
    for i in 1..n-1
      res += eval(f + "("+a.to_s+ "+" + i.to_s + "*"+ h.to_s + ")")
    end
    return (h*res).round(10)
  end
  def f1(x)
    return 1.0/((x+1.0)*Math.sqrt(x**2 + 1.0))
  end
  def f2(x)
    return x* Math.atan(x)
  end
  def display
    puts "Integral f1 method prm: ",prm(0.0, 0.6,"f1", 100000)
    puts"Integral f1 method trp: ",trp(0.0, 0.6,"f1", 100000)
    puts"Integral f2 method prm: ",prm(0.02, 1.6,"f2", 100000)
    puts"Integral f2 method trp: ",trp(0.02, 1.6,"f2", 100000)
  end
end
integral = Integral.new
integral.display
