def hello_t(array) # method that takes in array as arg.
    if block_given? #allows us to call method w/ or w/o a block
      i = 0 # set counter begin at 0
  
      while i < array.length # create while loop, counter less than length of array
        yield(array[i]) # grabs vlaue of each successive index element and we proceed 
        i = i + 1 # increment the value of i
      end
  
      array # returns original array
    else
      puts "Hey! No block was given!" # if no block, return..
    end
  end 

hello_t(["Tim", "Tom", "Jim"])
# call your method here!
# hello_t(["Tim", "Tom", "Jim"]) do |name| # calls method w/ arg. Starts code block
#     if name.start_with?("T") # if name starts w/ T
#         puts "Hi, #{name}" # output string w/ name
#     end
# end

