require 'json' 
class Product
	
	attr_accessor :prodcode, :prodname, :prodcat
	
	def initialize(*args)
		@prodcode = args[0]
		@prodname = args[1]
    @prodcat = args[2]
	end
	
	def save
		savedprods = {product_code: @prodcode, product_name: @prodname.capitalize, product_category: @prodcat.capitalize}.to_json
		open('products.json', 'a') do |file|
			file.puts savedprods
		end
	end
 	def self.display
		display_products = File.open('products.json', 'r'){|file| file.read}
		puts display_products
	end
end
