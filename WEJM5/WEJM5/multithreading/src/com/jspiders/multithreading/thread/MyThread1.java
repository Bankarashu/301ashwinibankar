package com.jspiders.multithreading.thread;

public class MyThread1 extends Thread  {
	@Override
	public void run() {
		for(int i=1;i<=3;i++) {
		System.out.println("My Thread 1 in running...!!!");
		}
	}
	

}
