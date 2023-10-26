require 'poke-api-v2'

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    data = PokeApi.get(pokemon: 'bulbasaur')
    # @data = api_service.get_pokemon('ditto')
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(title: "...", body: "...")

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end
end

