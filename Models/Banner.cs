using System.ComponentModel.DataAnnotations;

public class Banner
{
    [Key]
    public int Id { get; set; }

    [Required(ErrorMessage = "Tên Banner không được để trống")]
    [StringLength(100, ErrorMessage = "Tên Banner không được vượt quá 100 ký tự")]
    public string Name { get; set; }

    public byte Status { get; set; } = 1; // Mặc định hiển thị (1)

    public int Prioty { get; set; } = 0; // Độ ưu tiên, mặc định 0

    [StringLength(100)]
    public string? Image { get; set; }

    [StringLength(350, ErrorMessage = "Mô tả không được vượt quá 350 ký tự")]
    public string? Description { get; set; }
}