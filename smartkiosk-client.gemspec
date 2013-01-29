lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smartkiosk/client/version'

Gem::Specification.new do |gem|
  gem.name          = 'smartkiosk-client'
  gem.version       = Smartkiosk::Client::VERSION
  gem.authors       = ['Boris Staal']
  gem.email         = ['boris@roundlake.ru']
  gem.description   = %q{Smartkiosk client application}
  gem.summary       = gem.description
  gem.homepage      = 'https://github.com/smartkiosk/smartkiosk-client'
  gem.files         = `git ls-files`.split($/)

  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'rake',                      '10.0.3'
  gem.add_dependency 'thin',                      '1.5.0'
  gem.add_dependency 'sinatra',                   '1.3.4'
  gem.add_dependency 'sinatra-activerecord',      '1.2.1'
  gem.add_dependency 'sinatra-contrib',           '1.3.2'
  gem.add_dependency 'sprockets',                 '2.8.2'
  gem.add_dependency 'sinatra-sprockets-ext',     '0.0.5'

  gem.add_dependency 'activesupport',             '3.2.11'
  gem.add_dependency 'smartkiosk-common',         '0.0.2'

  gem.add_dependency 'sqlite3',                   '1.3.6'
  gem.add_dependency 'pg',                        '0.14.1'
  gem.add_dependency 'redis',                     '3.0.2'
  gem.add_dependency 'redis-objects',             '0.6.1'
  gem.add_dependency 'carrierwave',               '0.7.1'

  gem.add_dependency 'rest-client',               '1.6.7'
  gem.add_dependency 'recursive-open-struct',     '0.2.1'

  gem.add_dependency 'haml',                      '3.1.7'
  gem.add_dependency 'liquid',                    '2.4.1'
  gem.add_dependency 'file-tail',                 '1.0.12'

  gem.add_dependency 'rubyzip',                   '0.9.9'
  gem.add_dependency 'pry',                       '0.9.10'

  gem.add_dependency 'smartware',                 '0.2.8'
  gem.add_dependency 'smartguard',                '0.3.8'
  gem.add_dependency 'amqp',                      '0.9.8'

  gem.add_dependency 'sidekiq',                   '2.6.5'
  gem.add_dependency 'slim',                      '1.3.4'
  gem.add_dependency 'rufus-scheduler',           '2.0.17'
end
