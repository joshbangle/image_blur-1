class Image
  attr_accessor :x, :y, :new_image

  def initialize(array)
    @new_image = Array.new(array)
  end


    def output_image
      @new_image.each do |r|
        puts r.join
      end
    end

    def output_image2     #learning the bracket syntax
      @new_image.each {|r| 
        puts r.join
      }
    end
    
 

end


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image
image.output_image2

