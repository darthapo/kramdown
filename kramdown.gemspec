lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'kramdown/version'


SUMMARY = 'kramdown is a fast, pure-Ruby Markdown-superset converter.'
DESCRIPTION = <<EOF
kramdown is yet-another-markdown-parser but fast, pure Ruby,
using a strict syntax definition and supporting several common extensions.
EOF
# PKG_FILES= FileList.new([
#   'Rakefile',
#   'setup.rb',
#   'COPYING', 'GPL', 'README', 'AUTHORS',
#   'VERSION', 'ChangeLog', 'CONTRIBUTERS',
#   'bin/*',
#   'benchmark/*',
#   'lib/**/*.rb',
#   'man/man1/kramdown.1',
#   'data/**/*',
#   'doc/**',
#   'test/**/*'
# ])


Gem::Specification.new do |s|
  #### Basic information
  s.name = 'kramdown'
  s.version = Kramdown::VERSION
  s.summary = SUMMARY
  s.description = DESCRIPTION

  #### Dependencies, requirements and files
  # s.files = PKG_FILES.to_a

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.require_path = 'lib'
  # s.executables = ['kramdown']
  s.default_executable = 'kramdown'
  s.add_development_dependency 'coderay', '~> 1.0.0'

  #### Documentation

  s.has_rdoc = true
  s.rdoc_options = ['--main', 'README']
  s.extra_rdoc_files = 'README'

  #### Author and project details

  s.author = 'Thomas Leitner'
  s.email = 't_leitner@gmx.at'
  s.homepage = "http://kramdown.rubyforge.org"
  s.rubyforge_project = 'kramdown'
end