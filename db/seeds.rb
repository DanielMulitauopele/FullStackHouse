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
# GEM FUNCTIONALITY
gem_card = GemCard.new('Hearts', 'Nine')
gem_deck = GemDeck.new(gem_card)

# Create 52 card templates
gem_deck.create('Standard')

deck_images = [
    'black-ghost-back',
    'blue_back',
    'gray_back',
    'green_back',
    'purple_back',
    'red_back',
    'yellow_back',
]

deck_images.each do |deck_image|
    Deck.create!(name: deck_image, deck_type: 'Standard', back_image: "/deck_backs/#{deck_image}.png")
end

gem_deck.cards.each do |g_card|
    Card.create!(
        suit: g_card.suit, 
        value: g_card.value, 
        name: g_card.name, 
        color: g_card.color, 
        image: "/images/#{g_card.suit.downcase}/#{g_card.code}.png", 
        rank: g_card.rank, 
        quote: 'The best way to destroy an enemy is to make him a friend.'
    )
end

Deck.all.each do |deck|
    Card.all.each do |card|
        DeckCard.create(card_id: card.id, deck_id: deck.id)
    end
end

puts "7 decks with 52 cards each created"


