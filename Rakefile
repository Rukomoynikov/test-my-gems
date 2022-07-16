require_relative './lib/processes/print_repos_to_console_process'

desc 'build a dev docker image with the latest code'
task :build_dev do
  PrintReposToConsole.new.process
end

task :default => :build_dev