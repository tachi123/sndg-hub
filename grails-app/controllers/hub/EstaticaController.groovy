package hub

class EstaticaController {

    def navegador() { 
		def url = 'http://arkham.exp.dc.uba.ar/xomeq'
//		if (params.genome) {
//			url += '/genome/' + params.genome 
//		}
		respond url, model: [url: url]
	}
	
	def foroMeta() {
		
	}
	
	def foroGenomica() {
		
	}
}
