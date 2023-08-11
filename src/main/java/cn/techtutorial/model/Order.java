package cn.techtutorial.model;

public class Order {
		private String order_id;
		private String status;
		private String order_date;
		private String payment_method;
		private String delivery_method;
		private String delivery_unit;
		private Double delivery_cost;
		private String customer_id;
		private String coupon_id;
		public Order(String order_id, String status, String order_date, String payment_method, String delivery_method,
				String delivery_unit, Double delivery_cost, String customer_id, String coupon_id) {
			this.order_id = order_id;
			this.status = status;
			this.order_date = order_date;
			this.payment_method = payment_method;
			this.delivery_method = delivery_method;
			this.delivery_unit = delivery_unit;
			this.delivery_cost = delivery_cost;
			this.customer_id = customer_id;
			this.coupon_id = coupon_id;
		}
		public Order() {
		}
		public String getOrder_id() {
			return order_id;
		}
		public void setOrder_id(String order_id) {
			this.order_id = order_id;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public String getOrder_date() {
			return order_date;
		}
		public void setOrder_date(String order_date) {
			this.order_date = order_date;
		}
		public String getPayment_method() {
			return payment_method;
		}
		public void setPayment_method(String payment_method) {
			this.payment_method = payment_method;
		}
		public String getDelivery_method() {
			return delivery_method;
		}
		public void setDelivery_method(String delivery_method) {
			this.delivery_method = delivery_method;
		}
		public String getDelivery_unit() {
			return delivery_unit;
		}
		public void setDelivery_unit(String delivery_unit) {
			this.delivery_unit = delivery_unit;
		}
		public Double getDelivery_cost() {
			return delivery_cost;
		}
		public void setDelivery_cost(Double delivery_cost) {
			this.delivery_cost = delivery_cost;
		}
		public String getCustomer_id() {
			return customer_id;
		}
		public void setCustomer_id(String customer_id) {
			this.customer_id = customer_id;
		}
		public String getCoupon_id() {
			return coupon_id;
		}
		public void setCoupon_id(String coupon_id) {
			this.coupon_id = coupon_id;
		}
		
		
		
		
}
