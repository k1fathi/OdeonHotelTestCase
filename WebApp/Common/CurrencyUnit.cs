using System.ComponentModel.DataAnnotations;

namespace WebApp.Common
{
    public enum CurrencyUnit : byte
    {
        [Display(Name = "TL")]
        TRY = 0,
        USD = 1
    }
}