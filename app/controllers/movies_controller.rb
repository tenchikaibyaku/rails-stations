class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    # 検索キーワードがあればフィルタリング
    if params[:keyword].present?
      @movies = @movies.where("name LIKE ? OR description LIKE ?", "%#{params[:keyword]}%", "%#{params[:keyword]}%")
    end

    # 公開状態の絞り込み（true/false）
    if params[:is_showing].present?
      is_showing = ActiveModel::Type::Boolean.new.cast(params[:is_showing])
      @movies = @movies.where(is_showing: is_showing)
    end
  end
end
