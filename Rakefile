# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'lightline'

task :default => 'spec:run'

PROJ.name = 'lightline'
PROJ.authors = 'Ben Erickson'
PROJ.email = 'ben@benerickson.com'
PROJ.url = 'http://github.com/bdericks/lightline/tree/master'
PROJ.version = Lightline::VERSION
PROJ.rubyforge.name = 'lightline'
PROJ.ignore_file = '.gitignore'

PROJ.spec.opts << '--color'

# EOF
