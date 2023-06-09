class PagesController < ApplicationController
  def home
    @titre="home"
    @article = utilisateur_courant.articles.build if logged_in?
  end

  def aide
    @titre="aide"
  end

  def contact
    @titre="Contact"
  end
end
