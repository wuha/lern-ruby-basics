
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

		von.upto(bis) do |i|
			puts "#{text} Nummer:#{i}"
		end


	end

end


class ArrayUndHashes

	def initialize

		@zahlenreihe=Array.new
		@toDoListe=Array.new
		@verbindung=Array.new

	end


	def iniArrayMitZahlenVonBis(von,bis)

		von.upto(bis) do |i|
			@zahlenreihe<<i
		end
	end


	# Arry mit Range-forschleife ausgeben
	def ausgabeZahlenreihe
		for i in (0..@zahlenreihe.length)
			puts @zahlenreihe[i]
		end
	end

	def hinzufuegenZurToDoListe(neuesToDo)
		@toDoListe<<neuesToDo
	end

	#Arry mit do each Schleife ausgeben
	def ausgabeDotoListe
		@toDoListe.each do |todo|
			puts todo
		end
	end

	#Hash mit Verbindundsaten

	def neueVerbindung (user,password,url,port)
		#Hash wird mit Parametern gefüllt. Es werden Symbole als Schlüssel verwendet
		@verbindung={:username=>user,:userpassword=>password,:serverurl=>url,:serverport=>port}		
	end

	def ausgabeVerbindungsdaten
		puts "Definierte Parameter: #{@verbindung.count}"
		@verbindung.each do |key,value|
			puts "Parameter: #{key} - Wert: #{value}"
		end
	end

	def ausgabeUsername
		@verbindung['username']
	end


end


# Test mit Array und Hashes

meinArry_Hash=ArrayUndHashes.new


meinArry_Hash.neueVerbindung 'simon.goetz','test','www.feedon.me','21'
puts "Ausgabe nur des Benutzernamens: #{meinArry_Hash.ausgabeUsername}"
meinArry_Hash.ausgabeVerbindungsdaten



meinArry_Hash.iniArrayMitZahlenVonBis 5,15
meinArry_Hash.ausgabeZahlenreihe

meinArry_Hash.hinzufuegenZurToDoListe 'OP'
meinArry_Hash.hinzufuegenZurToDoListe 'Essen'

meinArry_Hash.ausgabeDotoListe

meinArry_Hash.hinzufuegenZurToDoListe 'Schlafen'
meinArry_Hash.ausgabeDotoListe




# Test mit Schleifen und Vergleichen
meinVergleich=Vergleiche_Schleifen.new

puts meinVergleich.istZahlGroesserAls 8,6
meinVergleich.wiederholeText_While 'He Ihr: Wiederholung mit Whileschleife', 5
meinVergleich.wiederholungMitTimes 'He Ihr: Wiederholung mit Whileschleife und Times', 5
meinVergleich.wiederholungMitUpTo 'He Ihr: Wiederholung mit Whileschleife und Upto',555,559



# Test mit TestClass
meinTest=TestClass2.new

meinTest.methode_mit_paramter 'hello test'

# Test mit Class Car
meinAuto= Car.new

puts meinAuto.zeige_ps.to_s

meinAuto.erhoehe_ps 50

meinAuto.farbe="Yellow"

# Liste alle Methoden der Klasse: puts meinAuto.methods












