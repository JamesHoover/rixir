# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Basic Blood heirarchy
blood = Specimen.create(label: 'ABC', type: 'Blood')
blood.save

# Basic Tissue Heirarchy
block = Specimen.create(label: '123', type: 'FFPE')
block.save

# Basic TMA Heirarchy
