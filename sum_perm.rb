#assuming array only contains positive numbers
def sum_perm(arr,target)
  result = []
  test_queue = arr.map{|el| el = [el]}
  until test_queue.empty?
    test_case = test_queue.shift
    arr.each do |el|
      if test_case.reduce(:+) + el == target
        new_result.push(test_case + [el])
      elsif test_case.reduce(:+) + el < target
        test_queue.push(test_case + [el])
      end
    end
  end
  return result
end

p(sum_perm([2,3],10))

p(sum_perm([3,7],10)) #expect [3,7], [7,3]

p(sum_perm([2,3,5,7],10)) #expect [3,7], [7,3], [2,2,2,2,2], [2,3,3,2], [2,2,3,3]...
