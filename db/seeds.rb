# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gtfs::Feed.create importer_class_name: "Gtfs::Translink::Importer",
  name: "SEQ",
  url: "https://openmobilitydata.org/p/translink/21/20220208/download",
