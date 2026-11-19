ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
# require "bootsnap/setup" # вимкнено: bootsnap не працює з кирилицею в шляху до gem-ів
