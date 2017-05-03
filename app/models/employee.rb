class Employee

  ROLES = [
    DELIVERY_GUY = "delivery_guy",
    MANAGER = "manager"
  ]

  attr_accessor :id
  attr_reader :username, :password

  def initialize(attr = {})
    @id = attr.fetch(:id, nil)
    @username = attr.fetch(:username, nil)
    @password = attr.fetch(:password, nil)
    @role = attr.fetch(:role, DELIVERY_GUY) # @role = attr[:role] || DELIVERY_GUY
  end

  def manager?
    @role == MANAGER
  end

  def delivery_guy?
    @role == DELIVERY_GUY
  end

end
