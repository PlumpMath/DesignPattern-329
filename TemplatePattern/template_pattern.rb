# class Report
#     def initialize
#         @title = 'Monthly Report'
#         @text = ['Things are going', 'really, really well']
#     end

#     def output_report(format)
#         if format == :plain
#             puts "***#{@title}***"
#         elsif format == :html
#             puts '<html>'
#             puts '  <head>'
#             puts "      <title>#{@title}</title>"
#             puts '  </head>'
#             puts '  <body>'
#         else
#             raise "Unknown format: #{format}"
#         end
        
#         @text.each do |line|
#             if format == :plain
#                 puts line
#             elsif format == :html
#                 puts("      <p>#{line}</p>")
#             else
#                 railse "Unknown format: #{format}"
#             end
#         end

#         if format == :html
#             puts '  </body>'
#             puts '</html>'
#         end
        
#     end
# end

# report = Report.new
# report.output_report(:plain)

# Further Decoupling

class Report
    def initialize
        @title = 'Monthly Report'
        @text = ['Things are going', 'really, really well']
    end

    def output_report
        output_start
        output_head
        output_body_start
        output_body
        output_body_end
        output_end
    end

    def output_start
        raise 'Called abstract method: output_start'
    end

    def output_head
        raise 'Called abstract method: output_head'
    end

    def output_body_start
        raise 'Called abstract method: output_body_start'
    end

    def output_body
        @text.each do |line|
            output_line(line)
        end
    end

    def output_body_end
        raise 'Called abstract method: output_body_end'
    end

    def output_end
        raise 'Called abstract method: output_end'
    end
end

class HTMLReport < Report
    def output_start
        puts '<html>'
    end

    def output_head
        puts '  <head>'
        puts "      <title>#{@title}</title>"
        puts '  </head>'
    end

    def output_body_start
        puts '  <body>'
    end

    def output_body_end
        puts '  </body>'
    end

    def output_end
        puts '</html>'
    end

    def output_line(line)
        puts("      <p>#{line}</p>")
    end
end

class PlainTextReport < Report
    def output_start
    end

    def output_head
        puts "***#{@title}***"
    end

    def output_body_start
    end

    def output_body_end
    end

    def output_end
    end

    def output_line(line)
        puts line
    end
end

html_report = HTMLReport.new
html_report.output_report

puts 

plaintext_report = PlainTextReport.new
plaintext_report.output_report