module Habilidades
    
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end 
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end  
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'    
        end   
    end
end


module Alimentacion

    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end   
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end     
    end

    module Omnivoro
        def comer
            'Puedo comer Carne y Plantas'
        end
    end
end

#Crear la clase Animal con un atributo nombre .Agregar un método getter para el atributo nombre .

class Animal 
    include Habilidades
    include Alimentacion
    attr_reader :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end
 
#Crear las clases Ave,Mamifero e Insecto. Ambas heredan de Animal .

class Ave < Animal

end

class Mamifero < Animal

end

class Insecto < Animal

end


#Crear las clases Pinguini,Paloma y Pato . Las tres heredan de Ave .
#Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal.


class Pinguino < Ave
    include Herbivoro
    include Nadador
    include Carnivoro
    def volar
        "No puedo volar!"
    end

end

class Paloma < Ave
    include Herbivoro
    include Volador
    include Caminante
    def comer
        "Puedo comer granos y semillas"
    end
end

class Pato < Ave
    include Herbivoro
    include Nadador
    include Caminante
    def volar
        "No puedo volar!"
    end
end

class Gallina < Ave
    include Caminante
    include Herbivoro
    include Volador

    def volar
        "No Puedo Volar!"

    end

    def comer
        "puedo comer plantas, granos y semillas"
    end

end

#Crear las clases Perro,Gato y Vaca. Las tres heredan de Mamifero

class Perro < Mamifero
    include Caminante
    include Omnivoro
    include Nadador
end

class Gato < Mamifero
    include Caminante
    include Omnivoro
    
end

class Vaca < Mamifero
    include Caminante
    include Omnivoro
    include Nadador
end

#Crear las clases Mosca,Mariposa y Abeja. las tres heredan de Insecto

class Mosca < Insecto
    include Volador
    include Omnivoro
    include Nadador
    def comer
        "Puedo comer heces"
    end
end

class Mariposa < Insecto
    include Volador
    include Herbivoro
    include Nadador

end

class Abeja < Insecto
    include Volador
    include Omnivoro
    include Nadador
    def comer
        "Puedo comer Miel y Polen "
    end
end

#aves

kowalski = Pinguino.new('Kowalski')
puts "Kowalski"
puts kowalski.volar
puts kowalski.comer
puts kowalski.nadar
puts kowalski.sumergir
puts "\n"

palo = Paloma.new('Palo')
puts "Palo"
puts palo.comer
puts palo.volar
puts palo.aterrizar
puts palo.caminar
puts "\n"

lucas = Pato.new('Lucas')
puts "Lucas"
puts lucas.comer
puts lucas.volar
puts lucas.caminar
puts lucas.nadar
puts lucas.sumergir
puts "\n"

bataraza = Gallina.new("Bataraza")
puts "Bataraza"
puts bataraza.comer
puts bataraza.caminar
puts bataraza.volar
puts "\n"

#mamiferos

chocolo = Perro.new("Chocolo")
puts "Chocolo"
puts chocolo.comer
puts chocolo.caminar
puts chocolo.nadar
puts "\n"

cucho = Gato.new("Cucho")
puts "Cucho"
puts cucho.comer
puts cucho.caminar

puts "\n"

lola = Vaca.new("Lola")
puts "Lola"
puts lola.comer
puts lola.caminar
puts lola.nadar
puts "\n"


#Insectos

tsetse = Mosca.new("TseTse")
puts "TseTse"
puts tsetse.comer
puts tsetse.volar
puts "\n"

maya = Abeja.new("Maya")
puts "Maya"
puts maya.comer
puts maya.volar
puts "\n"

erestu = Mariposa.new("Erestu")
puts "Erestu"
puts erestu.comer
puts erestu.volar
puts "\n"
