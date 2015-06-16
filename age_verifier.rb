class Start
  def initialize
    ask_age
  end

  def ask_age
    puts "What is your age?"
    @age = gets.chomp.to_i
    ask_if_correct
  end

  def ask_if_correct
    puts "You declared your age as #{@age}. Would you like to change this? (y/n)"
    change = gets.chomp
    if change.include? "y"
      ask_age
    else
      evaluate_permissions
    end
  end

  def evaluate_permissions
    if @age >= 21
      puts "#{l1_permissions} #{l2_permissions} #{l3_permissions}"
      retry_message
    elsif @age >= 18
      puts "#{l1_permissions} #{l2_permissions}"
      retry_message
    elsif @age >=16
      puts "#{l1_permissions}"
      retry_message
    else @age < 16
      puts "#{l0_permissions}"
      retry_message
    end
  end

  def l3_permissions
    puts "\nYou may go to nudie bars and you may drink booze."
  end

  def l2_permissions
    puts "\nYou may vote and be sent to war to die."
  end

  def l1_permissions
    puts "\nYou may drive a car and work like an urchin."
  end

  def l0_permissions
    puts "\nYou are not yet ready, young Padawan"
  end

  def retry_message
    puts "Press 'y' to try again or 'x' to exit"
    change = gets.chomp
    if change.include? "y"
      ask_age
    end
  end
end
Start.new



