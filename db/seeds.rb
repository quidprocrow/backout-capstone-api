# frozen_string_literal: true
sentence_list = [
  [true],
  [false],
  [false],
  [false],
  [false]
]
sentence_list.each do |bool|
  Seededsentence.create(active: bool)
end

word_collection = [
  "This is it: the end. You were wrong.".split,
  "Not the situation, per se, or your response to it, but rather the figure in the dark, bent over Bertram's body, with a book.".split,
   "It's not wrong that Bertram should die; it's wrong that you could be the one to do it.".split,
   "But then, I suppose you should have expected as much.".split,
   "One would think the special thing about magical things -- or life -- was the possibility of true recreation.".split
 ]

word_collection.each do |collection|
  p 'Going!'
  collection.each do |word|
    p word
    temp = {
      text: word,
      clickable: false,
      redacted: false,
      seededsentence_id: (word_collection.index(collection) + 1),
    }
    Seededword.create(temp)
  end
end
clickable_words = {
  6 => { clickable: true },
  #you
  8 => { clickable: true },
  #wrong
  22 => { clickable: true },
  #figure
  28 => { clickable: true },
  #bertram
  38 => { clickable: true },
}
Seededword.update(clickable_words.keys, clickable_words.values)

step_collection = [
  {
    redact: [2, 3, 4, 5, 6],
    sentenceindex: 2,
    hopemodifier: -5,
    wisdommodifier: 5,
    seededword_id: 8
  },
  {
    redact: [2],
    sentenceindex: 4,
    hopemodifier: 0,
    wisdommodifier: 0,
    seededword_id: 6
  },
  {
    redact: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 21, 22, 23],
    sentenceindex: 3,
    hopemodifier: 0,
    wisdommodifier: 5,
    seededword_id: 28,
  },
  {
    redact: [19, 20, 21],
    sentenceindex: 5,
    hopemodifier: 0,
    wisdommodifier: 5,
    seededword_id: 22
  }
]

step_collection.each do |step|
  Seededstep.create(step)
end


# first_sen.each do |word|
#   if first_sen.index(word) === 5
#     temp = {
#       text: word,
#       clickable: true,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   elsif first_sen.index(word) === 7
#       temp = {
#         text: word,
#         clickable: true,
#         redacted: false,
#         seededsentence_id: 1,
#       }
#   else
#     temp = {
#       text: word,
#       clickable: false,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   end
#   first_sen_arr << temp
# end
#
# first_sen_arr = []
# first_sen.each do |word|
#   if first_sen.index(word) === 5
#     temp = {
#       text: word,
#       clickable: true,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   elsif first_sen.index(word) === 7
#       temp = {
#         text: word,
#         clickable: true,
#         redacted: false,
#         seededsentence_id: 1,
#       }
#   else
#     temp = {
#       text: word,
#       clickable: false,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   end
#   first_sen_arr << temp
# end
#
# second_sen_arr = []
# second_sen.each do |word|
#   if second_sen.index(word) === 5
#     temp = {
#       text: word,
#       clickable: true,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   elsif second_sen.index(word) === 7
#       temp = {
#         text: word,
#         clickable: true,
#         redacted: false,
#         seededsentence_id: 1,
#       }
#   else
#     temp = {
#       text: word,
#       clickable: false,
#       redacted: false,
#       seededsentence_id: 1,
#     }
#   end
#   second_sen_arr << temp
# end
#
# sentence_list.each do |bool|
#   Seededsentence.create(active: bool)
# end
#
# first_sen_arr.each do |word|
#   Seededword.create(word)
# end
#
# second_sen_arr.each do |word|
#   Seededword.create(word)
# end

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
