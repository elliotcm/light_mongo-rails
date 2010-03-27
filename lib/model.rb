require 'model/active_model_compliance'

module LightMongo
  module Model
    def self.included(document_class)
      document_class.class_eval %{
        include LightMongo::Document
        include LightMongo::Model::ActiveModelCompliance
      }
    end
  end
end
