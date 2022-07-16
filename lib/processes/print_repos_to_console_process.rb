require_relative '../api_clients/github_api_client'
require 'processable'
require 'tabled'

class PrintReposToConsole < Processable
  def initialize(client = GithubApiClient.new)
    super
    @gh_client = client
  end

  step :fetch_repos do
    @gh_client.where('rails')
  end

  step :get_repos do |repos_json|
    repos_json['items']
  end

  step :print_to_console do |repos|
    data = repos.first(10).map { |repo|
      [repo['name'], repo['url'], repo['stargazers_count']]
    }

    Tabled.new(data, titles: ['Title', 'Url', 'Score']).print_to_console
  end
end