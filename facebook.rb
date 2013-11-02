require 'koala'

class ClienteFacebook

	
#es mejor colocar la variable @graph para no estar generando una conexion a cada rato hacia el facebook
# Inicio constructor que inicializa la integración mediante el token al facebook
	def initialize
		@graph = Koala::Facebook::API.new("CAACEdEose0cBADruMcZBKCu6sWUZCtZCEsEtIAvove3tXyr6gsv5K6UGCl95RVZCUAAGHZCBFU4hqAFO0u0qXhHZCA9Lwe9IadwBXrvlOztBV7vjYEOGdfll3xaDqPqdeWYZAyF9BZAeobD3VMG9JfiMYgKb17fs6IGd1oT4ZBoVV051ceawZCTjGdh8sKYRuXoQgasRvKOZBPtjwZDZD")		
	end
#Fin de constructor

#PArametro con valor por defecto, si no le paso un usuario obtiene mi información
	def usuario(nombre="me") # parametro opcion=nombre
		@graph.get_object(nombre)
	end

	def feed
		@graph.get_connections("me", "feed").first["message"]
	end
end

cliente = ClienteFacebook.new
#imprimir el resultado de la instancia.
puts cliente.usuario()
