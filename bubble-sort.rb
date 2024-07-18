array = [4,3,78,2,0,2]

def bubble_sort(arr)
bubble = 0
    arr.each_with_index do |a,a_ind|
        arr.each_with_index do |b,b_ind|
                 if b < a
                    bubble = b
                    arr[b_ind] = a
                    arr[a_ind] = bubble
                    a = arr[a_ind]
                    b = arr[b_ind]
                    
                end
           
            

        end
        
    end
    arr.reverse!
    puts "#{arr}"

end

bubble_sort(array)
