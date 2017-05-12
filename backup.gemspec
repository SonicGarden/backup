# encoding: utf-8

require File.expand_path("lib/backup/version")

Gem::Specification.new do |gem|
  gem.name        = "backup"
  gem.version     = Backup::VERSION
  gem.authors     = "Michael van Rooijen"
  gem.email       = "meskyanichi@gmail.com"
  gem.homepage    = "https://github.com/backup/backup"
  gem.license     = "MIT"
  gem.summary     = "Provides an elegant DSL in Ruby for performing backups "\
    "on UNIX-like systems."
  gem.description = <<-EOS.gsub(/\s+/, " ").strip
    Backup is a RubyGem, written for UNIX-like operating systems, that allows
    you to easily perform backup operations on both your remote and local
    environments. It provides you with an elegant DSL in Ruby for modeling your
    backups.  Backup has built-in support for various databases, storage
    protocols/services, syncers, compressors, encryptors and notifiers which
    you can mix and match. It was built with modularity, extensibility and
    simplicity in mind.
  EOS

  gem.files = `git ls-files -- lib bin templates README.md LICENSE`.split("\n")
  gem.require_path  = "lib"
  gem.executables   = ["backup"]

  gem.required_ruby_version = ">= 2.0"

  gem.add_dependency "thor"
  gem.add_dependency "open4"
  gem.add_dependency "fog"
  gem.add_dependency "excon"
  gem.add_dependency "unf"
  gem.add_dependency "dropbox-sdk"
  gem.add_dependency "net-ssh"
  gem.add_dependency "net-scp"
  gem.add_dependency "net-sftp"
  gem.add_dependency "mail"
  gem.add_dependency "pagerduty"
  gem.add_dependency "twitter"
  gem.add_dependency "hipchat"
  gem.add_dependency "flowdock"
  gem.add_dependency "dogapi"
  gem.add_dependency "aws-sdk"
  gem.add_dependency "qiniu"
  gem.add_dependency "nokogiri"

  gem.add_development_dependency "rubocop"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "mocha"
  gem.add_development_dependency "timecop"
end
