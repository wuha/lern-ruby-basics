
class TestClass

	def initialize (farbe='gruen')
		puts "Farbe der Initalisierung: #{farbe}"
	end

	def methode_multiplikation(zahl1,zahl2)
		ergebis=zahl1*zahl2
		puts "#{ergebis} ist #{ergebis.class}"
		puts true.class

	end


	def methode_ohne_paramter
		puts 'Test'
		puts 'Test'
		puts 'test'	
		methode_mit_default_paramter
	end

	def methode_mit_paramter(text)
		#String Methoden verkettet
		text=text.upcase.reverse
		puts text
		puts text
		puts text
	end

	private

	def methode_mit_default_paramter(text='Hallo Ihr')
		puts text
		puts text
		puts text
	end

end

class TestClass2 < TestClass

end


class Car

	def initialize
		@ps=122
		@farbe="schwarz"
		@tueren=4
	end

	def erhoehe_ps (ps)
		@ps=@ps+ps
	end

	def zeige_ps
		#Gibt Artibutswert zurück
		@ps
	end

	#Vorgefertigte Gettermethoden
	attr_reader :ps, :tueren, :farbe

	#Vorgefertige Settermethoden
	attr_writer :ps, :tueren, :farbe

	#Vergefertige Getter+Settermethode
	attr_accessor :ps, :tueren, :farbe

end


class Vergleiche_Schleifen

	def istZahlGroesserAls(zahl1,zahl2)
		if zahl1>zahl2
			true
		elsif zahl1==zahl2
			puts 'gleich'
			
		else
			false
		end
	end

	def wiederholeText_While(text,anzahl)

		i=1
		while i<=anzahl 
			puts "#{text} Nummer:#{i}"
			i=i+1
		end
	end

	def wiederholungMitTimes(text,anzahl)
		anzahl.times do |i|

			puts "#{text} Nummer:#{i}"

		end
	end

	def wiederholungMitUpTo(text,von,bis)

		von.upto bis do |i|
			puts "#{text} Nummer:#{i}"
		end


	end

end


meinVergleich=Vergleiche_Schleifen.new

puts meinVergleich.istZahlGroesserAls 8,6
meinVergleich.wiederholeText_While 'He Ihr: Wiederholung mit Whileschleife', 5
meinVergleich.wiederholungMitTimes 'He Ihr: Wiederholung mit Whileschleife und Times', 5
meinVergleich.wiederholungMitUpTo 'He Ihr: Wiederholung mit Whileschleife und Upto',5,10



# Test mit TestClass
meinTest=TestClass2.new

meinTest.methode_mit_paramter 'hello test'

# Test mit Class Car
meinAuto= Car.new

puts meinAuto.zeige_ps.to_s

meinAuto.erhoehe_ps 50

meinAuto.farbe="Yellow"

# Liste alle Methoden der Klasse: puts meinAuto.methods












