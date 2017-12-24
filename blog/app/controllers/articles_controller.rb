class ArticlesController < ApplicationController
#get,post..加上路由地址对应一个action

  def new #对应的是get请求，view就是response
  end

  def create #对应的是post请求，没有视图，需要自己定义响应
    # render plain: params[:article].inspect
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params[:id])
    #  We also use an instance variable (prefixed with @) to hold a reference to the article object. We do this because Rails will pass all instance variables to the view.
    # 翻译过来就是rails会自动将任何@打头的实例带到show页面
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
