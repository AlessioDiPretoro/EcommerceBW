using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce
{
    public class Cart
    {
        public List<Cart> cartList = new List<Cart>();
        public int quantity { get; set; }

        public Product Product { get; set; }

        public Cart()
        { }

        public Cart(int quantity, Product product)
        {
            this.quantity = quantity;
            this.Product = product;
        }
    }
}