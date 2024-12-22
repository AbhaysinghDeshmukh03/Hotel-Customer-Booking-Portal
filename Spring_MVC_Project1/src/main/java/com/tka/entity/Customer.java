package com.tka.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="customer")
public class Customer {
		
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int cid;
		private String name;
		private int noofpeople;
		private String roomtype;
		private String checkin;
		private String checkout;
		
		public Customer() {
			super();
		}

		public Customer(String name, int noofpeople, String roomtype, String checkin, String checkout) {
			super();
			this.name = name;
			this.noofpeople = noofpeople;
			this.roomtype = roomtype;
			this.checkin = checkin;
			this.checkout = checkout;
		}

		public Customer(int cid, String name, int noofpeople, String roomtype, String checkin, String checkout) {
			super();
			this.cid = cid;
			this.name = name;
			this.noofpeople = noofpeople;
			this.roomtype = roomtype;
			this.checkin = checkin;
			this.checkout = checkout;
		}

		public int getCid() {
			return cid;
		}

		public void setCid(int cid) {
			this.cid = cid;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getNoofpeople() {
			return noofpeople;
		}

		public void setNoofpeople(int noofpeople) {
			this.noofpeople = noofpeople;
		}

		public String getRoomtype() {
			return roomtype;
		}

		public void setRoomtype(String roomtype) {
			this.roomtype = roomtype;
		}

		public String getCheckin() {
			return checkin;
		}

		public void setCheckin(String checkin) {
			this.checkin = checkin;
		}

		public String getCheckout() {
			return checkout;
		}

		public void setCheckout(String checkout) {
			this.checkout = checkout;
		}

		@Override
		public String toString() {
			return "Customer [cid=" + cid + ", name=" + name + ", noofpeople=" + noofpeople + ", roomtype=" + roomtype
					+ ", checkin=" + checkin + ", checkout=" + checkout + "]";
		}
		
		

}
