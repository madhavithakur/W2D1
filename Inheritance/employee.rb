class Employee 
 attr_reader :salary
  
 def initialize(name, title , salary, boss, employees)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @employees = employees
  end 

  def bonus(multiplier)
    if self.employees.empty? 
      return salary * multiplier 
    else
      total = 0
      self.employees.each do |employee|
        total += employee.bonus(multiplier)
      end
    end
  end 

end