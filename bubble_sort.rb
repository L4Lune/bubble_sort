require 'pry-byebug'
sort_me = Array.new(10) { rand(0..10) }
def bubble_sort(sort_me)
    sorted_array = []
    n = sort_me.length
    sorted = false
    i = 0
    
    while i < sort_me.length    
        swapped = false
        for idx in 1..(n - 1) do
            if sort_me[idx - 1] > sort_me[idx]
                (sort_me[idx - 1], sort_me[idx] = sort_me[idx], sort_me[idx - 1])
                swapped == true
            end #if
        end #for
        i+=1
    end #while
    p sort_me
end

# binding.pry
bubble_sort(sort_me)