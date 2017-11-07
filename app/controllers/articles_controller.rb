class ArticlesController < ApplicationController

  def new
  end

  def create
     @article = Article.new(article_params)
    if @article.valid?
      @article.save
      #Автоматически загружается представление для данного экшена

      #Защита от двойного сабмита
      redirect_to @article
      #т.к. редиректит на /articles/:id то представление articles/create.html.erb не используется
      #можно удалить
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
