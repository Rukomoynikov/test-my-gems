require_relative '../lib/api_clients/github_api_client'

RSpec.describe do
  let(:gh_client) do
    Class.new(GithubApiClient)
  end

  it 'loads github repos' do
    expect(gh_client.new.where('rails').keys).to match(["total_count", "incomplete_results", "items"])
  end
end
