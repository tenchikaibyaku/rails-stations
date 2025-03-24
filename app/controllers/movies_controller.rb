class MoviesController < ApplicationController
  def index
    @movies = Movie.all  # データベースからすべての映画を取得
  end
end
