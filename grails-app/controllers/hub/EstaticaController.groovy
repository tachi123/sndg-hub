package hub

class EstaticaController {

    def navegador() { 
		def url = 'http://arkham.exp.dc.uba.ar/xomeq'
		if (params.genome) {
			url += '/genome/' + params.genome
		}
		respond url, model: [url: url, title: 'Navegador de genomas']
	}
	
	def formRecursos() {
		def url = 'http://arkham.exp.dc.uba.ar/xomeq'
		if (params.genome) {
			url += '/genome/' + params.genome
		}
		respond url, model: [url: url, title: 'Navegador de genomas']
	}
	
	def estadisticas() {
		def url = 'https://public.tableau.com/profile/publish/tablerosndg/Historia1#!/publish-confirm'
		//		if (params.genome) {
		//			url += '/genome/' + params.genome
		//		}
		respond view: 'estadisticas', url, model: [url: url, title: 'Estad&iacute;sticas']
	}
	
	def foroMeta() {
		
	}
	
	def foroGenomica() {
		
	}
}
