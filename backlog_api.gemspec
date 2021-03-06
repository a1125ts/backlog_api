# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backlog_api/version'

Gem::Specification.new do |spec|
  spec.name          = "backlog_api"
  spec.version       = BacklogApi::VERSION
  spec.authors       = ["a1125ts"]
  spec.email         = ["a1125ts@aiit.ac.jp"]
  spec.description   = %q{Ruby toolkit for the Backlog API.}
  spec.summary       = %q{Ruby toolkit for the Backlog API + α}
  spec.homepage      = "https://github.com/a1125ts/backlog_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock' # web_api用のmock
  spec.add_development_dependency 'vcr' # 2回目以降はローカルのデータをmockとして使用
  spec.add_development_dependency 'guard-livereload' # ブラウザ自動リロード
  spec.add_development_dependency 'guard-rspec' # 自動テスト
  spec.add_development_dependency 'growl' # テスト結果をgrowlで通知
  spec.add_development_dependency 'rb-fsevent' # ファイルの変更を検知する。OSX用。いる?  
  spec.add_development_dependency 'capybara' # ブラウザ操作
  spec.add_development_dependency 'selenium-webdriver'# cappybaraのドライバ(firefox,chrome,safari,etc)
  spec.add_development_dependency 'poltergeist' # cappybaraのドライバ(phantomjs)
  spec.add_development_dependency 'capybara-webkit' # cappybaraのドライバ(Qtwebkit直)
  spec.add_development_dependency 'launchy' # capybaraのsave_and_open_pageメソッド(スクリーンショットを取る)で必要
  
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'pry-doc'
  spec.add_development_dependency 'pry-debugger'
  spec.add_development_dependency 'tapp'
  spec.add_development_dependency 'sinatra-contrib'
  spec.add_development_dependency 'simplecov' # カバレッジ測定
  # spec.add_development_dependency 'coveralls' # カバレッジ測定

	spec.add_runtime_dependency "thor"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency 'awesome_print'
  spec.add_runtime_dependency 'net-netrc'
  spec.add_runtime_dependency 'sinatra'
  spec.add_runtime_dependency 'haml'
	
end
