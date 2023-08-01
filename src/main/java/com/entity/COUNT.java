package com.entity;

public class COUNT {
	private int activeusers;
	private int inactiveusers;
	public COUNT() {
		super();
		// TODO Auto-generated constructor stub
	}
	public COUNT(int activeusers, int inactiveusers) {
		super();
		this.activeusers = activeusers;
		this.inactiveusers = inactiveusers;
	}
	public int getActiveusers() {
		return activeusers;
	}
	public int setActiveusers(int activeusers) {
		return this.activeusers = activeusers;
	}
	public int getInactiveusers() {
		return inactiveusers;
	}
	public int setInactiveusers(int inactiveusers) {
		return this.inactiveusers = inactiveusers;
	}
	

}
