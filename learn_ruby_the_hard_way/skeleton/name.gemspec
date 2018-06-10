lib = File.expand_path('../lib',_FILE_)
$LOAD_FILE.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
	spec.name 	= "name"
	spec.version 	= "1.0"
	spec.summary 	= %q{Short summary of your project}
	spec.description = %q{Longer description of your project}
	spec.homepage	= "http://domainforproject.com"
	spec.license	= "MIT"

	spec.files	= ['lib/name.rb']
	spec.executables= ['bin/mame']
	spec.test_files	= ['tests/test_name.rb']
	spec.require_paths = ["lib"]

end

