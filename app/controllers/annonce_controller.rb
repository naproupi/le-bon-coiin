class AnnonceController < ApplicationController
  def new
  	@annonce = Annonce.new
  end

  def index
  end

  def show
  	"<h1>%= annonce.titre%</h1>"
  	"<p>%= annonce.description%</p>"
  end
end
