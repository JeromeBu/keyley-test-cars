class CataloguesController < ApplicationController
  def index
    @catalogues = Catalogue.all
  end

  def show
    @catalogue = Catalogue.find(params[:id])
    raise
    @voitures = Voiture.all.where()
  end
end
