User.delete_all
jessica = User.create("username" => "jessica", "password" => "danie11e", "name" => "Jessice Lane")
chris = User.create("username" => "chris", "password" => "hill27", "name" => "Christopher Alexander")

Alias.delete_all
strad = Alias.create("other_name" => "straddle")
ki = Alias.create("other_name" => "kicks")

Dance.delete_all
rond_de_jambe = Dance.create("move" => "Rond De Jambe", "definition" => "Means 'leg circle'.
    Actually, half-circles made by the pointed foot, returning through first position to repeat;
    creating the letter 'D' on the floor. From front to back rond de jambe en dehors, or from back to
    front rond de jambe en dedans.", "picture_url" => "http://ia.media-imdb.com/images/M/MV5BMTM2Njg2NjU5NF5BMl5BanBnXkFtZTYwODI5MDc4._V1_SY226_SX144_AL_.jpg",
    "video_url" => "https://www.youtube.com/watch?v=rYVogYO3N5g", "difficulty" => 2, "genre" => "Ballet", "category" => "Move", "page_count" => 0)
split = Dance.create("move" => "Split", "alias_id" => strad.id, "definition" => "Is when the dancer opens
    his/her legs in 180°, front or sideways.", "picture_url" => "http://cultivatinghabits.files.wordpress.com/2014/01/woman-in-splits.jpg",
    "video_url" => "https://www.youtube.com/watch?v=VLxO-UJdYU4", "difficulty" => 3, "genre" => "Ballet", "category" => "Stretch", "page_count" => 0)
grand battement = Dance.create("move" => "Grand Battement", "alias_id" => ki.id, "definition" => "Meaning "beat".
    A beating movement of the working leg (i.e. the leg that is active). Battements are usually executed in front
    (en avant or à la quatrieme devant), to the side (à la seconde) or back (en arrière or à la quatrieme derrière).",
    "picture_url" => "http://christinah28.edublogs.org/files/2011/05/grand-battement2-yd90ae.jpg",
    "video_url" => "https://www.youtube.com/watch?v=CgKXn1Evj-o", "difficulty" => 2, "genre" => "Ballet", "category" => "Move", "page_count" => 0)

puts "There are now #{Dance.count} dance terms."



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
