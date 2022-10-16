# frozen_string_literal: true

require_relative '../lib/employee'

class Startup
  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    @salaries.key?(title)
  end

  def >(other)
    funding > other.funding
  end

  def hire(employee_name, title)
    if valid_title?(title)
      @employees << Employee.new(employee_name, title)
    else
      raise 'Invalid title'
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    salary = @salaries[employee.title]
    if salary > @funding
      raise 'Not enough funding'
    else
      employee.pay(salary)
      @funding -= salary
    end
  end

  def payday
    @employees.each { |employee| pay_employee(employee) }
  end

  def average_salary
    total = 0
    @employees.each { |employee| total += @salaries[employee.title] }
    total / @employees.length
  end

  def close
    @employees = []
    @funding = 0
  end

  def acquire(startup)
    @funding += startup.funding
    startup.salaries.each do |title, salary|
      @salaries[title] = salary unless @salaries.key?(title)
    end
    @employees += startup.employees
    startup.close
  end
end
