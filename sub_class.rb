class User
  def initialize(name)
    @name = name
  end

  def hello
    puts "Hello! I am #{@name}."
  end
end

class AdminUser < User
  def admin_hello
    puts "Hello I am #{@name} from AdminUser."
  end
  
  # def hello
  #   puts 'Admin!'
  # end
end

# nakamura = User.new('Nakamura')
# nakamura.hello
# nakamura.admin_hello

sato = AdminUser.new('Sato')
sato.hello
sato.admin_hello