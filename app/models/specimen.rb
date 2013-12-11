class Specimen
  include Mongoid::Document
  field :parent, type: String
  field :type, type: String
  field :label, type: String
end
