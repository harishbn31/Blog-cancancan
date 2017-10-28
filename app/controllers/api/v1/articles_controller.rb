class Api::V1::ArticlesController < ApplicationController
  def index
  	if params[:offset]
  		@articles = Article.offset(params[:offset]).limit(3)
  	end
  	render json: {articles: @articles.map{|p| p.attributes.except!("body").merge(user_name: p.user.email, truncated_body: p.body.truncate(200), formatted_date: p.published_date.strftime('%d %B %Y'))}}
  end
end
