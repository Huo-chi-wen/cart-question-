package cart;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cart.Cart;
import cart.CartItem;
import cart.Product;

public class orderAction extends ActionSupport{
	
	private Product p;
	
	CartItem item=new CartItem();
	
	
	public String execute() {
		
		item.setProduct(p);
		Cart cart=getCart();
		cart.addCartItem(item);
		System.out.println(cart.getCartItem());
		return SUCCESS;
	}

	private Cart getCart() {
		Cart cart =(Cart)ServletActionContext.getRequest().getSession().getAttribute("CART");
		if(cart==null) {
			cart=new Cart();
			ServletActionContext.getRequest().getSession().setAttribute("CART", cart);
			
		}
		return cart;
	}
	
	public String clearCart() {
		
		Cart cart= getCart();
		
		cart.clearCart();
		
		return "clearCart";
	}
	
	public String removeCart() {
		
		Cart cart=getCart();
		
		//cart.removeCart(cart.getCartItem().iterator().hashCode());
		//how to get product ID inside collection
		return "remove";
		
	}
	

	public Product getP() {
		return p;
	}

	public void setP(Product p) {
		this.p = p;
	}

	public CartItem getItem() {
		return item;
	}

	public void setItem(CartItem item) {
		this.item = item;
	}

	
	
	
	
	

}
