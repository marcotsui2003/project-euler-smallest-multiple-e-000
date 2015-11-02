class SmallestMultiple
  def initialize (input)
    @input = input
  end

  def lcm
    result_array =[0,1,2]
    prime_hash = {
      2=>1,
      3=>0,
      5=>0,
      7=>0,
      11=>0,
      13=>0,
      17=>0,
      19=>0
      }
    for i in (3..@input)
      new_prime_hash = prime_factor(i)
      new_prime_hash.each do |key,value|
        prime_hash[key] = [new_prime_hash[key], prime_hash[key]].max
      end
      #puts prime_hash
    end
    #puts prime_hash
    return prime_hash.reject{|k,v| v==0}.each.map {|k,v| k**v}.inject(:*)
  end

  def prime_factor(input)
    prime_hash = {
      2=>0,
      3=>0,
      5=>0,
      7=>0,
      11=>0,
      13=>0,
      17=>0,
      19=>0
      }
    new_hash = prime_hash
    num = input
    prime_hash.each.map do |k,v|
      #puts k
      if k <= num
        while num % k == 0
          new_hash[k] += 1
          num = num/k
          #new_hash
        end
      else
      end
    end
    new_hash
  end
end
