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
deck_images = [
    '/deck_backs/black-ghost-back.png',
    '/deck_backs/blue_back.png',
    '/deck_backs/gray_back.png',
    '/deck_backs/green_back.png',
    '/deck_backs/purple_back.png',
    '/deck_backs/red_back.png',
    '/deck_backs/yellow_back.png',
]

deck_images.each do |deck_image|
    Deck.create!(name: 'Standard Deck', deck_type: 'Standard', back_image: deck_image)
end

Deck.all.each do |deck|
    # GEM FUNCTIONALITY
    gem_card = GemCard.new('Hearts', 'Nine')
    gem_deck = GemDeck.new(gem_card)
    
    # Create 52 card templates
    gem_deck.create('Standard')

    gem_deck.cards.each do |card|
        deck.cards.create!(
            suit: card.suit, 
            value: card.value, 
            name: card.name, 
            color: card.color, 
            image: "/assets/images/#{card.suit}/#{card.code}.png", 
            rank: card.rank, 
            quote: 'The best way to destroy an enemy is to make him a friend.'
        )
    end
end

puts "7 decks with 52 cards each created"


