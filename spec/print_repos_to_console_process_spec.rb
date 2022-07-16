require_relative '../lib/processes/print_repos_to_console_process'

RSpec.describe do
  let(:print_process) do
    Class.new(PrintReposToConsole)
  end

  # it 'loads github repos' do
  #   expect(print_process.new.process.keys).to match(["total_count", "incomplete_results", "items"])
  # end

  # it 'loads github repos' do
  #   expect(print_process.new.process).to be_a_kind_of(Array)
  # end
end
