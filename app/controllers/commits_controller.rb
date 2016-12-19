class CommitsController < ApplicationController

  def index
    @commits = Commit.last_ten
  end

  def create
    raw_commits = JSON.parse(request.raw_post, symbolize_names: true)[:commits]
    raw_commits.each do |raw_commit|
      Commit.find_or_create_by(message: raw_commit[:message],
                               author_name: raw_commit[:author][:name],
                               url: raw_commit[:url],
                               sha: raw_commit[:id][0..6],
                               timestamp: raw_commit[:timestamp])
    end
    # Callback.create(json: )
  end

  # private
end
