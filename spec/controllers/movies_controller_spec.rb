require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  render_views

  describe 'Station1 GET /movies' do
    before do
      @movies = create_list(:movie, 3)
      get :index
    end

    it '200を返すこと' do
      expect(response).to have_http_status(200)
    end

    it 'HTMLを返すこと' do
      expect(response.body).to include('<!DOCTYPE html>')
    end

    it 'HTMLの中にはmoviesテーブルのレコード数と同じ件数のデータがあること' do
      @movies.each do |movie|
        expect(response.body).to include(movie.title)  # ← 修正: name → title
        expect(response.body).to include(movie.image_url)
      end
    end
  end
end
