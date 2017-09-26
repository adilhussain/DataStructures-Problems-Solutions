# Author: Adil Hussain
# Date: Tuesday, 26th September 2017

# Problem Statement: Write a function rotate(ar[], d, n) that rotates arr[] of size n by d elements.
# The Array is sorted.

require_relative '../array_custom.rb'

class ArrayRotation
  attr_accessor :array, :rotate_by

  def initialize(array = [], rotate_by = 0)
    @array = array
    @rotate_by = rotate_by
  end

  # Method 1 (Use temp array) 
  # Input arr[] = [1, 2, 3, 4, 5, 6, 7], d = 2, n =7
  # 1) Store d elements in a temp array
  #    temp[] = [1, 2]
  # 2) Shift rest of the arr[]
  #    arr[] = [3, 4, 5, 6, 7, 6, 7]
  # 3) Store back the d elements
  #    arr[] = [3, 4, 5, 6, 7, 1, 2]

  def use_temp_array
    @rotate_by = @rotate_by % @array.length
    return @array if (@array.empty?)

    # Store d elements in a temp array
    temp = @array[0...@rotate_by]

    # Shift rest of the arr[]
    remaining_count = @array.count - @rotate_by

    (0...remaining_count).each do |position|
      @array[position] = @array[position + @rotate_by]
    end

    # Store back the d elements
    (0...@rotate_by).each do |i|
      @array[@array.length - @rotate_by + i] = temp[i]
    end

    puts "Array after rotation by #{@rotate_by} is #{@array.to_s}"
  end
end

customArray = ArrayUtil.new
customArray.addNElements(10,10, [0,1,2,3,4,5,6,7,8,9])
array_rotation = ArrayRotation.new(customArray.arr, 4)

# rotate using temp array
array_rotation.use_temp_array