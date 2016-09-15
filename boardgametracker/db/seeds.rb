# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = {:username => "msscarlet", :email => "scarlet@clue.com", :password => "red"}
user2 = {:username => "colonelmustard", :email => "mustard@clue.com", :password => "yellow"}
user3 = {:username => "professorplum", :email => "plum@clue.com", :password => "purple"}
user4 = {:username => "mrswhite", :email => "white@clue.com", :password => "white"}
user5 = {:username => "mrgreen", :email => "green@clue.com", :password => "green"}
user6 = {:username => "mrspeacock", :email => "peacock@clue.com", :password => "blue"}

User.create(user1)
User.create(user2)
User.create(user3)
User.create(user4)
User.create(user5)
User.create(user6)

game1 = {:name => "clue", :description => "mr. green with the wrench in the library"}
game2 = {:name => "monopoly", :description => "buying boardwalk!"}
game3 = {:name => "settlers of catan", :description => "trade sheep for wood?"}
game4 = {:name => "ticket to ride", :description => "rainbow train!!"}

Game.create(game1)
Game.create(game2)
Game.create(game3)
Game.create(game4)

tag1 = {:name => "resource gathering"}
tag2 = {:name => "friendship-destroying"}
tag3 = {:name => "mystery"}

Tag.create(tag1)
Tag.create(tag2)
Tag.create(tag3)

comment1 = {:content => "cool", :user_id => "1", :game_id => "3"}
comment2 = {:content => "great", :user_id => "2", :game_id => "3"}
comment3 = {:content => "awesome", :user_id => "3", :game_id => "4"}

Comment.create(comment1)
Comment.create(comment2)
Comment.create(comment3)

library1 = {:user_id => "1", :game_id => "1"}
library2 = {:user_id => "2", :game_id => "2"}
library3 = {:user_id => "3", :game_id => "3"}
library4 = {:user_id => "4", :game_id => "4"}
library5 = {:user_id => "5", :game_id => "1"}
library6 = {:user_id => "6", :game_id => "2"}
library7 = {:user_id => "1", :game_id => "2"}
library8 = {:user_id => "1", :game_id => "3"}
library9 = {:user_id => "1", :game_id => "4"}
library10 = {:user_id => "2", :game_id => "3"}
library11 = {:user_id => "2", :game_id => "4"}

Library.create(library1)
Library.create(library2)
Library.create(library3)
Library.create(library4)
Library.create(library5)
Library.create(library6)
Library.create(library7)
Library.create(library8)
Library.create(library9)
Library.create(library10)

gametag1 = {:tag_id => "1", :game_id => "3"}
gametag2 = {:tag_id => "2", :game_id => "2"}
gametag3 = {:tag_id => "2", :game_id => "1"}
gametag4 = {:tag_id => "2", :game_id => "4"}
gametag5 = {:tag_id => "3", :game_id => "1"}

Gametag.create(gametag1)
Gametag.create(gametag2)
Gametag.create(gametag3)
Gametag.create(gametag4)
Gametag.create(gametag5)

relationship1 = {:user_id => "1", :friend_id => "2"}
relationship2 = {:user_id => "1", :friend_id => "3"}
relationship3 = {:user_id => "1", :friend_id => "4"}
relationship4 = {:user_id => "1", :friend_id => "5"}

relationship5 = {:user_id => "2", :friend_id => "1"}
relationship6 = {:user_id => "2", :friend_id => "4"}
relationship7 = {:user_id => "2", :friend_id => "6"}

relationship8 = {:user_id => "3", :friend_id => "1"}
relationship9 = {:user_id => "3", :friend_id => "5"}
relationship10 = {:user_id => "3", :friend_id => "6"}

relationship11 = {:user_id => "4", :friend_id => "1"}
relationship12 = {:user_id => "4", :friend_id => "2"}
relationship13 = {:user_id => "4", :friend_id => "6"}

relationship14 = {:user_id => "5", :friend_id => "1"}
relationship15 = {:user_id => "5", :friend_id => "3"}
relationship16 = {:user_id => "5", :friend_id => "6"}

relationship17 = {:user_id => "6", :friend_id => "2"}
relationship18 = {:user_id => "6", :friend_id => "3"}
relationship19 = {:user_id => "6", :friend_id => "4"}
relationship20 = {:user_id => "6", :friend_id => "5"}

Relationship.create(relationship1)
Relationship.create(relationship2)
Relationship.create(relationship3)
Relationship.create(relationship4)
Relationship.create(relationship5)
Relationship.create(relationship6)
Relationship.create(relationship7)
Relationship.create(relationship8)
Relationship.create(relationship9)
Relationship.create(relationship10)
Relationship.create(relationship11)
Relationship.create(relationship12)
Relationship.create(relationship13)
Relationship.create(relationship14)
Relationship.create(relationship15)
Relationship.create(relationship16)
Relationship.create(relationship17)
Relationship.create(relationship18)
Relationship.create(relationship19)
Relationship.create(relationship20)