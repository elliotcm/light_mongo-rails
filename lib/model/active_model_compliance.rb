require 'rubygems'

require 'active_model/naming'

require 'active_model/deprecated_error_methods'
require 'active_model/errors'

# Still missing from complete ActionPack integration is
# validations, which I've left out of this "barebones"
# compliance, and translations, which might be worth
# bundling in the future.

module LightMongo
  module Model
    
    module ActiveModelCompliance
      def to_param
        @_id.to_s
      end

      # Replace this with your own validations.
      def valid?
        true
      end

      # There is currently no useful difference
      # between a new record and a destroyed record.
      # 
      # As such, these methods are essentially synonymous.
      def new_record?
        @_id.nil?
      end

      def destroyed?
        @_id.nil?
      end
      
      def errors
        @errors ||= ActiveModel::Errors.new(self)
      end
      
      def self.included(doc_class)
        doc_class.extend ActiveModel::Naming
      end
    end
    
  end
end