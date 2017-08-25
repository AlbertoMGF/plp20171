package plp2017;

import plp2017.Buffer;

public class Produtor implements Runnable{
	
	int id;
	Buffer bu;
	int producaoMaxima;
	int producaoAtual = 0;
	
	Thread produtorThread;
	
	public Produtor(int id, Buffer bufferCompartilhado, int producaoTotal) {
		this.id = id;
		bu = bufferCompartilhado;
		producaoMaxima = producaoTotal;
	}

	void start() {
		if (produtorThread == null) {
			produtorThread = new Thread(this, "Produtor");
			produtorThread.start();
		}
		
	}
	
	private void stop() {
		System.out.println("Produtor #" + id + " esperando...");
	}

	@Override
	public void run() {
		while (bu.isClearned(id) && producaoAtual < producaoMaxima) {
			this.make();
		}
		if (bu.isClearned(id) && producaoAtual == producaoMaxima) {
			System.out.println("Produtor #" + id + " concluido!");
			produtorThread.stop();
		}
	}
	
	public void make() {
		bu.set(id);
		++producaoAtual;
		System.out.println("Produtor #" + id + " colocou produto #" + producaoAtual);
	}
}

