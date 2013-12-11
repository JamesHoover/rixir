class Specimen
  include Mongoid::Document
  field :parent, type: String
  field :label, type: String
  field :type, type: String
  embeds_one :subject
end
