class Subject
  include Mongoid::Document
  field :species, type: String
  field :tissue, type: String
  embedded_in :specimen
end
