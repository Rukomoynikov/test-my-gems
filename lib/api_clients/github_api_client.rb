require 'act_as_api_client'

class GithubApiClient < ApiClient
  act_as_api_client for: :github
end