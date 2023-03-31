require 'rspec/autorun'

# Big O: O(log n)

def binary_search(array, target)
  low = 0
  high = array.length - 1

  while low <= high
    mid = (low + high) / 2
    if target == array[mid]
      return mid
    elsif target < array[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end

  return -1
end

describe '#binary_search' do
  it 'returns the index of the target' do
    expect(binary_search([1, 2, 3, 4, 5], 4)).to eq(3)
  end

  it 'returns -1 if the target is not found' do
    expect(binary_search([1, 2, 3, 4, 5], 6)).to eq(-1)
  end
end