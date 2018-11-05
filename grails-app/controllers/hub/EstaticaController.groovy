package hub

class EstaticaController {

	def springSecurityService
	
    def navegador() { 
		def url = 'http://sndg.qb.fcen.uba.ar/sndg'
		if (params.genome) {
			url += '/genome/' + params.genome
		}
		respond url, model: [url: url, title: 'Navegador de genomas']
	}
	
	def descarga() {
		def url = 'http://target.sbg.qb.fcen.uba.ar/sndgdata/'
		if (params.genome) {
			url += params.genome
			//url += '/genome/' + params.genome + '/download/fasta'
		}
		redirect(url: url)
	}
	
	def formRecursos() {
		def url = 'http://target.sbg.qb.fcen.uba.ar/sndgupload/'
		if (params.centroSingiID && params.conjuntoSingiID) {
			url += params.centroSingiID + '/' + params.conjuntoSingiID
		}
		respond url, model: [url: url, title: 'Administración de recursos del centro']
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
