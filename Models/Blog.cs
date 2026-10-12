using System.ComponentModel.DataAnnotations;

public class Blog
{
    [Key]
    public int Id { get; set; }

    [Required(ErrorMessage = "Tên Blog không được để trống")]
    [StringLength(100, ErrorMessage = "Tên Blog không được vượt quá 100 ký tự")]
    public string Name { get; set; }

    public byte Status { get; set; } = 1; // Mặc định hiển thị (1)

    public DateTime CreatedDate { get; set; } = DateTime.Now; // Mặc định ngày hiện tại
}