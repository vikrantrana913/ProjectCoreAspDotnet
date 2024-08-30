using System.ComponentModel.DataAnnotations;

namespace ProjectCoreAspDotnet.Admin.Models
{
    public class StudentDbModels
    {
        public int StudentId { get; set; }

        [Display(Name ="Fullname")]
        [Required(ErrorMessage ="The field is required.")]
        public int Fullname { get; set; }
          
        [Display(Name ="Date of Birth")]
        [Required(ErrorMessage ="The field is required.")]
        public DateTime Dob { get; set; }

        [Display(Name ="Gender")]
        [Required(ErrorMessage ="The field is required.")]
        public string Gender { get; set; }

        [Display(Name ="Address")]
        [Required(ErrorMessage ="The field is required.")]
        public string Address { get; set; }

        [Display(Name ="ContactNumber")]
        [Required(ErrorMessage ="The field is required.")]
        public string ContactNumber { get; set; }

        [Display(Name ="Email")]
        [Required(ErrorMessage ="The field is required.")]
        public string Email { get; set; }



    }
}
