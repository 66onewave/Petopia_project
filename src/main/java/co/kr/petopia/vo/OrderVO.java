package co.kr.petopia.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter 
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class OrderVO {
	
	private int order_idx;
	private int product_idx;
	private String member_id;
	private Date order_date;
	private int payment_method;
	private String user_name;
	private String product_name;
	private String product_coloroption;
	private String product_price;	
	private int cart_id;
	private String product_detail_info;
	
	private String order_name;
	private String order_receiver_name;
	private String order_receiver_phonenumber;
	private String order_receiver_address;
	private int order_quantity;
	private int order_price;
	
	

	

	
}
