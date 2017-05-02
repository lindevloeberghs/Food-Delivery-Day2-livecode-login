require_relative "base_repository"
require_relative "../models/employee"

class EmployeeRepository < BaseRepository

  undef_method :add

  def find_by_username(username)
    @elements.find { |employee| employee.username == username }
  end

  private

  def build_element(row)
    row[:id] = row[:id].to_i # convert id from string to fixnum
    Employee.new(row)
  end

end
