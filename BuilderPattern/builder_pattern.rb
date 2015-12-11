class Director
    def initialize
        @process=[:create_header,:create_body,:create_footer]
    end

    def build builder
        @process.inject("") {|acc,method|
            acc+=builder.send method if builder.respond_to? method
            acc
        }
    end
end

class HTMLBuilder
    def initialize title
        @title = title
    end

    def create_header
        "<html><title>#{@title}</title></html>"
    end

    def create_body
        "</html>"
    end
end

class XMLBuilder
    def create_header
        "<?xml version='1.0' charset='utf-8'?>"
    end

    def create_body
        "<root>Welcome</root>"
    end
end

# test
director = Director.new
html_builder = HTMLBuilder.new 'XML sucks'
puts director.build(html_builder)

xml_builder = XMLBuilder.new
puts director.build(xml_builder)