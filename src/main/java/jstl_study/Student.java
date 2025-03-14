package jstl_study;

public class Student {
	//num, name, phone, addr, age
	private int num;
	private String name;
	private String phone;
	private String addr;
	private int age;
	
	public Student() {
		
	}

	public Student(int num, String name, String phone, String addr, int age) {
		this.num = num;
		this.name = name;
		this.phone = phone;
		this.addr = addr;
		this.age = age;
	}

	@Override
	public String toString() {
		return num + ". 이름:" + name + "(" + phone + ") 주소: " + addr + ", 나이: " + age + "";
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
