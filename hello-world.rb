
class TestClass

	def initialize (farbe='gruen')
		puts farbe
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


meinTest=TestClass2.new

meinTest.methode_ohne_paramter