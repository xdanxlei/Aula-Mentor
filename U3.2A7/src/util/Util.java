package util;

public abstract class Util {
	public static int rand3() {
		double rand = 10 * Math.random();
		while (rand >= 3) {
			rand = 10 * Math.random();
		}
		return (int) rand + 1;
	}
	
	public static int rand10() {
		int rand = (int) (10 * Math.random() + 1);
		while (rand > 10) {
			rand = (int) (10 * Math.random() + 1);
		}
		return rand;
	}
}
