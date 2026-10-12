using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

public class Product
{
    [Key]
    public int Id { get; set; }
    [Required, StringLength(100)]
    public string Name { get; set; }
    [Required]
    public float Price { get; set; }
    public float SalePrice { get; set; } = 0;
    public byte Status { get; set; } = 1;
    [Required]
    public int CategoryId { get; set; }
    [ForeignKey("CategoryId")]
    public Category? Category { get; set; }
    public DateTime CreatedDate { get; set; } = DateTime.Now;
    [StringLength(100)]
    public string? Image { get; set; }
    [StringLength(350)]
    public string? Description { get; set; }
}