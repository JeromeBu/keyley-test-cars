class CataloguesController < ApplicationController
  def index
    @catalogues = Catalogue.all
  end

  def show
    @catalogue = Catalogue.find(params[:id])
    @voitures = Voiture.all.where(catalogue: params[:id])
  end
end
