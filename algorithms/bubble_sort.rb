require 'rspec/autorun'

def bubble_sort(array)
  swapped = true
  while swapped
    swapped = false
    (array.length - 1).times do |i|
      left = array[i]
      right = array[i + 1]
      if left > right
        array[i + 1] = left
        array[i] = right
        swapped = true
      end
    end
  end
  array
end

describe '#bubble_sort' do
  it 'sorts an array' do
    expect(bubble_sort([2, 5, 3, 1, 4])).to eq([1, 2, 3, 4, 5])
  end

  it 'sorts an array with duplicates' do
    expect(bubble_sort([2, 5, 3, 1, 4, 2])).to eq([1, 2, 2, 3, 4, 5])
  end
end