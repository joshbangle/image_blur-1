class Image
  attr_accessor :ones

  def initialize(array)
    @new_image = array
  end


    def output_image
      @new_image.each do |r|
        puts r.join(' ') #readability
      end
    end

    def output_image2     #learning the bracket syntax
      @new_image.each {|r| 
        puts r.join
      }
    end
    
    def find_ones
      ones = [] #fills a new array with the coordinates for each 1 found
      @new_image.each_with_index do |subarray, s_i|    
        subarray.each_with_index do |pixel, p_i|
          ones << [s_i, p_i] if pixel == 1
        end
      end
                        #takes new_image[value of 0 index of first array checked][value of 1 index] + 1 so it is now looking 
                        #at the pixel 1 to the right, make it a 1 only if there is actually a pixel there
      ones.each do |i| 
        @new_image[i[0]][i[1]+1] = 1 if i[1] +1 <= @new_image[i[0]].length - 1
        @new_image[i[0]][i[1]-1] = 1
        @new_image[i[0]+1][i[1]] = 1 if i[0] + 1 <= @new_image.length - 1
        @new_image[i[0]-1][i[1]] = 1
      end
    end

    def blur
      find_ones
    end

end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])
# image.output_image
# image.output_image2




image.blur
image.output_image




arr_test= [  [0, 0, 0, 0],  [0, 1, 0, 0],  [0, 0, 0, 1],  [0, 0, 0, 0] ]

# if arr_test[2][2] == 0
#   if arr_test[2][2+1] == 1
#     arr_test[2][2] = 1
#   end

# end
  # puts arr_test
