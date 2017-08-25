package plp2017;

import java.util.ArrayList;

public class Buffer {
	
	ArrayList<Integer> date;
	
	public Buffer(int size) {
		if (size > 0) {
			date = new ArrayList<Integer>();
			fillWithZero();
		}
	}
	
	public boolean isClearned(int id) {
		if (date.get(id - 1) == 0) {
			return true;
		}
		return false;
	}
	
	public synchronized boolean get(int id) {
		if (date.get(id - 1) == 1) {
			date.set(id - 1, 0);
			return true;
		}
		return false;
	}
	
	private void fillWithZero() {
		for (int i = 0; i < date.size(); i++) {
			date.add(new Integer(0));			
		}
	}
	
	public synchronized boolean set(int id) {
		if (isClearned(id)) {
			return true;
		}
		return false;
	}

}
