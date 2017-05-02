class Router

  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
  end

  def run
    puts "Welcome to Restaurant Wagon"

    while @running
      display_actions
      action = ask_user_for_action
      print `clear`
      route_action(action)
    end
  end

  private

  def display_actions
    puts "**"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "0 - Stop"
    puts "**"
  end

  def ask_user_for_action
    puts "What would you like to do?"
    return gets.chomp.to_i
  end

  def route_action(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 0 then stop
    end
  end

  def stop
    @running = false
  end

end
