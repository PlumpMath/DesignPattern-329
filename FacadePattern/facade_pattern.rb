class Product
    attr_reader :name, :category, :tags
    def initialize name, category, tags = []
        @name = name
        @category = category
        @tags = tags
    end

    def self.find id
        PRODUCT
    end
end

class ProductFinder
    def self.find id
        PRODUCT
    end
end

class ProductController
    attr_reader :product

    def show id
        ProductFinder.find id
    end
end


PRODUCT = Product.new "Tomato", :fruit
controller = ProductController.new
puts controller.show(1).category