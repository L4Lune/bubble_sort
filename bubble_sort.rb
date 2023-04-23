require 'pry-byebug'
# sort_me = Array.new(5) { rand(0..10) }
sort_me = [8, 5, 9, 3, 1]

def bubble_sort(sort_me)
    sorted = []
    n = sort_me.length
    sorted = false
    swapped = false

    while sorted == false
        for i in 1..(n - 1) do
            if sort_me[i - 1] > sort_me[i]
                sort_me[i - 1], sort_me[i] = sort_me[i], sort_me[i - 1] 
            end #if
        end #for
    end #while
end

binding.pry
bubble_sort(sort_me)