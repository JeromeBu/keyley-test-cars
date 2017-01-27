class VoituresController < ApplicationController
  def index
    @catalogue = Catalogue.find(params[:catalogue_id])
    # @voitures = Voiture.all.where(:catalogue = params(:catalogue_id))
  end

  def new
    @catalogue = Catalogue.find(params[:catalogue_id])
    @voiture = Voiture.new()
  end

  def create
    @voiture = Voiture.new(voiture_params)
  end

  private

  def voiture_params
    params.require(:voiture).permit(:nom, :code, :description, :tarif, :poids, :catalogue)
  end
end
