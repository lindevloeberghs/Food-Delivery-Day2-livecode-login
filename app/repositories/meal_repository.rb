require_relative "base_repository"
require_relative "../models/meal"

class MealRepository < BaseRepository

  # def initialize(csv_file)
  #   @csv_file = csv_file
  #   @meals = []
  #   @next_id = 1
  #   load_meals if File.exists?(@csv_file)
  # end

  # def all
  #   @meals
  # end

  # def find(meal_id)
  #   @meals[meal_id - 1]
  # end

  # def add(meal)
  #   meal.id = @next_id
  #   @meals << meal
  #   @next_id += 1
  #   write_csv # add_meal_to_csv(meal)
  # end

  private

  def build_element(row)
    row[:id]    = row[:id].to_i          # Convert column to Fixnum
    row[:price] = row[:price].to_i       # Convert column to Fixnum
    Meal.new(row)
  end

end




