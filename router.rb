class Router

  def initialize(sessions_controller, meals_controller, customers_controller)
    @sessions_controller = sessions_controller
    @meals_controller = meals_controller
    @customers_controller = customers_controller
    @running = true
    @employee = nil
  end

  def run
    puts "Welcome to Restaurant Wagon"

    while @running

      @employee = @sessions_controller.sign_in

      while @employee
        display_actions
        action = ask_user_for_action
        print `clear`
        route_action(action)
      end

    end
  end

  private

  def display_actions
    if @employee.manager?
      display_actions_for_manager
    else
      display_actions_for_delivery_guy
    end
  end

  def display_actions_for_manager
    puts "**"
    puts "1 - List all meals"
    puts "2 - Add a new meal"
    puts "3 - List all customers"
    puts "4 - Add a new customer"
    puts "9 - Logout"
    puts "0 - Stop"
    puts "**"
  end

  def display_actions_for_delivery_guy
    puts "**"
    # TODO
    puts "9 - Logout"
    puts "0 - Stop"
    puts "**"
  end

  def ask_user_for_action
    puts "What would you like to do?"
    return gets.chomp.to_i
  end

  def route_action(action)
    if @employee.manager?
      route_action_for_manager(action)
    else
      route_action_for_deliver_guy(action)
    end
  end

  def route_action_for_manager(action)
    case action
    when 1 then @meals_controller.list
    when 2 then @meals_controller.add
    when 3 then @customers_controller.list
    when 4 then @customers_controller.add
    when 9 then logout
    when 0 then stop
    end
  end

  def route_action_for_deliver_guy(action)
    case action
    # TODO
    when 9 then logout
    when 0 then stop
    end
  end

  def logout
    @employee = nil
  end

  def stop
    logout
    @running = false
  end

end
