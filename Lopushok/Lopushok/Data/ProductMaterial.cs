//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Lopushok.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class ProductMaterial
    {
        public string ProductId { get; set; }
        public int MaterialId { get; set; }
        public int MaterialCount { get; set; }
        public int Id { get; set; }
    
        public virtual Material Material { get; set; }
        public virtual Product Product { get; set; }
    }
}
