# a recursive method to get a Fibonacci number
def fib(number)
  number < 2 ? number : fib(number - 1) + fib(number - 2)
end

# a method that maps the Fibonacci number to an array
def fibs(number)
  (0..number).map { |num| fib(num) }
end
p fibs(8)

def merge_sort(array)
  return array if array.size <= 1

  middle = (array.length / 2).round
  left_side = array[0...middle]
  right_side = array[middle..]

  merge(merge_sort(left_side), merge_sort(right_side))
end

def merge(left, right)
  sorted_array = []

  sorted_array << (left.first < right.first ? left.shift : right.shift) until left.empty? || right.empty?
  sorted_array + left + right
end

item_array = [1, 2, 7, 3, 4, 9, 6, 8, 10, 5]
p merge_sort(item_array)
