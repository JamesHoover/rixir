class Speciman
  include Mongoid::Document
  field :id, type: String
  field :parent, type: String
  field :type, type: String
  field :label, type: String
end
