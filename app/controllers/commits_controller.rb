class CommitsController < ApplicationController

  def index
    @commits = Commit.all
  end

  def create
    raw_commits = JSON.parse(request.raw_post, symbolize_names: true)[:commits]
    raw_commits.each do |raw_commit|
      Commit.find_or_create_by(message: raw_commit[:message],
                               author_name: raw_commit[:author][:names],
                               url: raw_commit[:url])
    end
    # Callback.create(json: )
  end

  # private
end
