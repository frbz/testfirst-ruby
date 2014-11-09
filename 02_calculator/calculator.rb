def add(a, b)
	c = a + b
end

def subtract(a, b)
	c = a - b
end

def sum(a)
	total = 0
	a.each do |x|
		total += x
	end
	return total
end

def multiply(a)
		total = 1
	a.each do |x|
		total *= x
	end
	return total
end

def raise(a, b)
	c = a**b
end

def factorial(a)
	total = 1
	(1..a).each do |x|
		total *= x
	end
	return total
end