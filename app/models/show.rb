require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network

  def actors_list
    shows_chars = Character.where(show_id: self)
    output_arr = []
    shows_chars.each { |char1| output_arr << char1.actor.full_name}
    output_arr
  end
end