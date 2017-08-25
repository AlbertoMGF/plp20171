package plp2017;

import plp2017.Buffer;

public class Consumidor implements Runnable {
	
	int id;
	Buffer bu;
	int consumoMaximo;
	int consumoAtual = 0;

	Thread consumidorThread;
	
	public Consumidor(int id, Buffer bufferCompartilhado, int totalConsumir) {
		this.id = id;
		bu = bufferCompartilhado;
		consumoMaximo = totalConsumir;
	}

	void start() {
		if (consumidorThread == null) {
			consumidorThread = new Thread(this, "Produtor");
			consumidorThread.start();
		}
		
	}
	
	private void stop() {
		System.out.println("Consumidor #" + id + " esperando...");
	}

	@Override
	public void run() {
		while (!bu.isClearned(id) && consumoAtual < consumoMaximo) {
			this.eat();
		}
		if (!bu.isClearned(id) && consumoAtual == consumoMaximo) {
			System.out.println("Produtor #" + id + " concluido!");
			consumidorThread.stop();
		}
	}
	
	public void eat() {
		bu.get(id);
		++consumoAtual;
		System.out.println("Consumidor #" + id + " consumiu:" + consumoAtual);
	}
	
	

}
