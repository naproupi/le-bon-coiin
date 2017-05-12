class AnnonceController < ApplicationController
  def create
  	@annonces = Annonce.new annonce_params
  	if @annonces.save
  		flash[:alert] = "Votre annonce a bien été crée"
  		redirect_to action:index
  	else
  		flash[:alert] = "Votre annonce n'a pas pu être crée"
  		render "new"
  	end
  end

  def index
  	@annonces = Annonce.paginate page: params[:page], per_page: 4
  end

  def show
  end

  private

  def annonce_params
  	params.require(:annonce).permit(:titre, :description)
  end
end
