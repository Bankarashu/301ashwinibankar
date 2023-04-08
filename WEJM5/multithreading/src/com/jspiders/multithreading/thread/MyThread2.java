package com.jspiders.multithreading.thread;

public class MyThread2 implements Runnable {
	@Override
	public void run() {
		for(int i=1;i<=3;i++) {
			System.out.println("My Thread 2 in now running");
		}
		
	}
	

}
