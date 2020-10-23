# frozen_string_literal: true

# get output class
class Output
  def output(arr1, arr2)
    i = 0
    while i < arr1.length
      puts "---------#{i + 1}--------"
      puts "product: #{arr1[i]}"
      puts "price: #{arr2[i]}"
      puts "\n"
      i += 1
    end
  end

  def valid_input?(num)
    num != 1 && num != 2
  end
end
