using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ORMTodos.DAL
{
    /// <summary>
    ///     each todo will be a row on the todos table
    /// </summary>

    //What does this attribute do - note the string is different to the name of the class
    [Table("todos")]
    public class todo
    {
        //Google these attributes and work out what they are doing in relation to entity framework
        [Key]
        [Column(Order = 0)]
        public int id { get; set; }

        [Key]
        [Column(Order = 1)]
        public string task { get; set; }

        [Key]
        [Column(Order = 2)]
        public bool isDone { get; set; }
    }
}