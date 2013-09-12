
class TestClass

	def initialize (farbe='gruen')
		puts "Farbe der Initalisierung: #{farbe}"
	end

	def methode_multiplikation(zahl1,zahl2)
		ergebis=zahl1*zahl2
		puts "#{ergebis} ist #{ergebis.class}"

	end


	def methode_ohne_paramter
		puts 'Test'
		puts 'Test'
		puts 'test'	
		methode_mit_default_paramter
	end

	def methode_mit_paramter(text)
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


meinTest=TestClass2.new 'blau'

meinTest.methode_multiplikation 23399,994884



