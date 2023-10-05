using System.Data;
using System.Linq;
using Cims.WorkflowLib.DbConnections;
using DeliveryService.Models.Menu;

namespace CustomerClientBL;

public class OrderResolver
{
    private PgDbConnection PgDbConnection { get; }
    private string ConnectionString { get; }

    public OrderResolver()
    {
        ConnectionString = "Server=127.0.0.1;Port=5432;Userid=postgres;Password=postgres;Database=postgres";
        PgDbConnection = new PgDbConnection(ConnectionString);
    }

    public List<MenuItem> GetMenu()
    {
        // 
        var categories = new List<MenuCategory>();
        var menuItems = new List<MenuItem>();
        // 
        var dtCategories = GetCategories();
        foreach (DataRow row in dtCategories.Rows)
        {
            if (int.TryParse(row["delivery_category_c_id"].ToString(), out int id))
            {
                categories.Add(new MenuCategory
                {
                    Id = id,
                    Name = row["category_name"].ToString(),
                    Description = row["category_description"].ToString(),
                    MenuItems = new List<MenuItem>()
                });
            }
        }
        //
        var dtMenuItems = GetMenuItems();
        foreach (DataRow row in dtMenuItems.Rows)
        {
            if (int.TryParse(row["delivery_category_c_id"].ToString(), out int categoryId) 
                && int.TryParse(row["delivery_menuitem_c_id"].ToString(), out int id))
            {
                var category = categories.Where(x => x.Id == categoryId).First();
                var mi = new MenuItem
                {
                    Id = id,
                    Name = row["menu_item_name"].ToString(),
                    Description = row["menu_item_description"].ToString(),
                    Price = row["menu_item_price"].ToString(),
                    MenuCategory = category
                };
                menuItems.Add(mi);
                category.MenuItems.Add(mi);
            }
        }
        return menuItems;
    }

    public DataTable GetCategories()
    {
        string sql = @$"-- 
select 
	dcc.delivery_category_c_id,
	dcc.""name"" as category_name,
	dcc.description as category_description
from delivery_category_c dcc
;";
        return PgDbConnection.ExecuteSqlCommand(sql);
    }

    public DataTable GetMenuItems()
    {
        string sql = @$"-- 
select 
	dmc.delivery_menuitem_c_id,
	dmc.delivery_category_c_id,
	dmc.""name"" as menu_item_name,
	dmc.description as menu_item_description,
	to_char(dmc.price, '999G999G999G990D90') as menu_item_price
from delivery_menuitem_c dmc
order by dmc.delivery_menuitem_c_id, dmc.delivery_category_c_id
;";
        return PgDbConnection.ExecuteSqlCommand(sql);
    }
}