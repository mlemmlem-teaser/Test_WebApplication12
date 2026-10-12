using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

public class Category
{
    [Key]
    public int Id { get; set; }
    [Required, StringLength(100)]
    public string Name { get; set; }
    public byte Status { get; set; } = 1;
    public DateTime CreatedDate { get; set; } = DateTime.Now;
    [StringLength(100)]
    public string? Image { get; set; }
    [StringLength(350)]
    public string? Description { get; set; }
    public ICollection<Product>? Products { get; set; }
}