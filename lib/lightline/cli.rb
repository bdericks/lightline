require 'optparse'
require 'rubygems'
require 'lightline/run'

module Lightline
  class CLI
    def self.execute(stdout, args=[])

      # NOTE: the option -p/--path= is given as an example, and should be replaced in your application.

      options = {
        # :path     => '~',
        :actions => [],
      }
      mandatory_options = %w( )

      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          This application is wonderful because...

          Usage: #{File.basename($0)} [options]

          Options are:
        BANNER
        opts.separator ""
        # opts.on("-p", "--path=PATH", String,
        #         "This is a sample message.",
        #         "For multiple lines, add more strings.",
        #         "Default: ~") { |arg| options[:path] = arg }
        # 
        # 
        opts.on("-h", "--help", "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(args)

        if mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; exit
        end
      end
      
      options[:q] = args[0]
      
      Lightline.query(options[:q])
    end
  end
end