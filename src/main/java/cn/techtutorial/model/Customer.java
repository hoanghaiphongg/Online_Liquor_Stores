package cn.techtutorial.model;

public class Customer {
		private String Id;
		private String name;
		private String address;
		private String phone;
		private String mail;
		private String password;

		
		
		public Customer() {
		}



		public Customer(String id, String name, String address, String phone, String mail, String password) {
			this.Id = id;
			this.name = name;
			this.address = address;
			this.phone = phone;
			this.mail = mail;
			this.password = password;
		}



		public String getId() {
			return Id;
		}



		public void setId(String id) {
			Id = id;
		}



		public String getName() {
			return name;
		}



		public void setName(String name) {
			this.name = name;
		}



		public String getAddress() {
			return address;
		}



		public void setAddress(String address) {
			this.address = address;
		}



		public String getPhone() {
			return phone;
		}



		public void setPhone(String phone) {
			this.phone = phone;
		}



		public String getMail() {
			return mail;
		}



		public void setMail(String mail) {
			this.mail = mail;
		}



		public String getPassword() {
			return password;
		}



		public void setPassword(String password) {
			this.password = password;
		}
		public String toString() {
			return "Customer [Id=" + Id + ", name=" + name + ", address=" + address + ", phone=" + phone + ", mail="
					+ mail + ", password=" + password + "]";
		}
		
		
}
