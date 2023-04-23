require 'pry-byebug'
# sort_me = Array.new(5) { rand(0..10) }
sort_me = [8, 5, 9, 3, 1]

def bubble_sort(sort_me)
    sorted_array = []
    n = sort_me.length
    sorted = false
    
    until sorted == true do
        swapped = false
        for idx in 1..(n - 1) do
            if sort_me[idx - 1] > sort_me[idx]
                sort_me[idx - 1], sort_me[idx] = sort_me[idx], sort_me[idx - 1]
                swapped == true 
            else sort_me[idx - 1] < sort_me[idx]
                sort_me[idx - 1], sort_me[idx] = sort_me[idx - 1], sort_me[idx]
            end #if
        end #for
        for idx in 1..(n - 1) do
            if sort_me[idx - 1] < sort_me[idx]
                sorted == true
            end #if
        end #for
    end #until
end

# binding.pry
bubble_sort(sort_me)