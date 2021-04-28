require "employee"

class Startup

    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        salaries.include? title
    end

    def >(startup)
        @funding > startup.funding
    end

    def hire(employee_name, title)
        if valid_title?(title)
            @employees.push(Employee.new(employee_name, title))
        else
            raise "Invalid Title"
        end
    end

    def size
        @employees.length
    end

    def pay_employee(employee)
        salary = @salaries[employee.title]
        if @funding > salary
            employee.pay(salary)
            @funding -= salary
        else
            raise "Not enough funding"
        end
    end

    def payday
        employees.each { |employee| pay_employee(employee) }
    end 

    def average_salary
        sum = 0
        @employees.each { |employee| sum += @salaries[employee.title]}
        sum / @employees.length
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup)
        @funding += startup.funding
        startup.salaries.each { |name, salary| @salaries[name] = salary if !@salaries.include? name }
        startup.employees.each { |employee| @employees << employee }
        startup.close
    end
end
