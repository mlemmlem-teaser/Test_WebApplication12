using Microsoft.EntityFrameworkCore;
using System.Reflection;
using System.Reflection.Metadata;

public class ProductAContext : DbContext
{
    public ProductAContext(DbContextOptions<ProductAContext> options) : base(options)
    {
    }

    public DbSet<Category> Categories { get; set; }
    public DbSet<Product> Products { get; set; }
    public DbSet<Banner> Banners { get; set; }
    public DbSet<Blog> Blogs { get; set; }
}