class Person

    attr_accessor :first_name, :last_name, :age

    def initialize(first, last, age=0)
      @first_name = first
      @last_name = last
      @age = age
    end

    def birthday
      @age += 1
    end

    def introduce
        "Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Student < Person

    def talk
        "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. "+super+ "y tengo #{age} años"
    end

end

class Teacher < Person

    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end

end

class Parent < Person

    def talk
        "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end

end

std = Student.new('Oscar','Bastias',27)
puts std.talk
puts std.introduce


tch = Teacher.new('Oscar','Bastias')
puts tch.talk
puts tch.introduce


prt = Parent.new('Oscar','Bastias')
puts prt.talk
puts prt.introduce

