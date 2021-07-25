package com.palm.tech.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;


public class Product implements Serializable{

	private static final long serialVersionUID = 3678107792576131001L;
	         private String productId;
			 private String name;
			 private BigDecimal unitPrice;
			 private String description;
			 private String manufacturer;
			 private String category;
			 private String state;
			 private long unitsInStock;
			 private long unitsInOrder;
			 private boolean discontinued;
			 private MultipartFile productManual;
			 
			 public Product() {
				super();
				// TODO Auto-generated constructor stub
			 }

			public Product(String productId, String name, BigDecimal unitPrice) {
				super();
				this.productId = productId;
				this.name = name;
				this.unitPrice = unitPrice;
				
			}

			public String getProductId() {
				return productId;
			}

			public void setProductId(String productId) {
				this.productId = productId;
			}

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public BigDecimal getUnitPrice() {
				return unitPrice;
			}

			public void setUnitPrice(BigDecimal unitPrice) {
				this.unitPrice = unitPrice;
			}

			public String getDescription() {
				return description;
			}

			public void setDescription(String description) {
				this.description = description;
			}

			public String getManufacturer() {
				return manufacturer;
			}

			public void setManufacturer(String manufacturer) {
				this.manufacturer = manufacturer;
			}

			public String getCategory() {
				return category;
			}

			public void setCategory(String category) {
				this.category = category;
			}

			

		
			public String getState() {
				return state;
			}

			public void setState(String state) {
				this.state = state;
			}

			public long getUnitsInStock() {
				return unitsInStock;
			}

			public void setUnitsInStock(long unitsInStock) {
				this.unitsInStock = unitsInStock;
			}

			public long getUnitsInOrder() {
				return unitsInOrder;
			}

			public void setUnitsInOrder(long unitsInOrder) {
				this.unitsInOrder = unitsInOrder;
			}

			

			public boolean isDiscontinued() {
				return discontinued;
			}

			public void setDiscontinued(boolean discontinued) {
				this.discontinued = discontinued;
			}

		
			public MultipartFile getProductManual() {
				return productManual;
			}

			public void setProductManual(MultipartFile productManual) {
				this.productManual = productManual;
			}

			@Override
			 public boolean equals(Object obj) {
			 if (this == obj)
			 return true;
			 if (obj == null)
			 return false;
			 if (getClass() != obj.getClass())
			 return false;
			 Product other = (Product) obj;
			 if (productId == null) {
			 if (other.productId != null)
			 return false;
			 } else if (!productId.equals(other.productId))
			 return false;
			 return true;
			 }
			 @Override
			 public int hashCode() {
			 final int prime = 31;
			 int result = 1;
			 result = prime * result
			 + ((productId == null) ? 0 :
			 productId.hashCode());
			 return result;
			 }		 
}
