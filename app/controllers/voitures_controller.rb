class VoituresController < ApplicationController
  def index
    @catalogue = Catalogue.find(params[catalogue_id])
    @voitures = Voiture.all.where(:catalogue = params(:catalogue_id))
  end
end
