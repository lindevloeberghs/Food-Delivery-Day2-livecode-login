class Employee

  ROLES = [
    DELIVERY_GUY = "delivery_guy",
    MANAGER = "manager"
  ]

  attr_accessor :id
  attr_reader :username, :password

  def initialize(attributes = {})
    @id = attributes.fetch(:id, nil)
    @username = attributes.fetch(:username, nil)
    @password = attributes.fetch(:password, nil)
    @role = attributes.fetch(:role, DELIVERY_GUY)
  end

  def delivery_guy?
    @role == DELIVERY_GUY
  end

  def manager?
    @role == MANAGER
  end

end
