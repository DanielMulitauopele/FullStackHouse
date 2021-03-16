# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

# deck = Deck.create(name: 'Standard Deck', deck_type: 'Standard', count: 52)

# available_suits = ['Hearts', 'Diamonds', 'Spades', 'Clubs']
# available_values = ["Ace", "King", "Queen", "Jack", "Ten", "Nine", "Eight", "Seven", "Six", "Five", "Four", "Three", "Two"]
# color = {'Hearts': 'Red', 'Diamonds': 'Red', 'Spades': 'Black', 'Clubs': 'Black'}

# available_suits.each do |suit|
#     available_values.each do |value|
#         c = Card.create(suit: suit, value: value, name: "#{value} of #{suit}", color: color[suit.to_sym], image: "/assets/images/Clubs/9C.png")

#         DeckCard.create(card_id: c.id, deck_id: deck.id)      
#     end
# end

card = Card.new('Hearts', 'Nine')

deck = Deck.new(card)
deck.create('Standard')

deck.cards.each do |card|
    puts card.name
end

