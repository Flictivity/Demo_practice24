using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lopushok.Data
{
    public partial class Product
    {
        public decimal Sum => ProductMaterial.Sum(x => x.MaterialCount * x.Material.CostInRubles);
    }
}
