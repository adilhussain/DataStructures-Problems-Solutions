class ArrayUtil
  attr_reader :arr  

  def initialize()
    @arr = []
  end 

  def addNElements(n = 10, range = 10, elements = [])
    puts "#{n} #{range} fs #{elements}"
    if not elements.empty?
      @arr = elements
    else
      n.times { @arr.push(rand(range)) }
    end
  end

  def show
    @arr.each {|e| print "#{e} " }
  end

end