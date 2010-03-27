require 'model/active_model_compliance'

module LightMongo
  module Model
    include LightMongo::Document
    include LightMongo::Model::ActiveModelCompliance
  end
end