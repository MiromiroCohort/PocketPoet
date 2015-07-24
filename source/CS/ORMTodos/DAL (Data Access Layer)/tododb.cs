using System.Data.Entity;

namespace ORMTodos.DAL
{
    //name of database
    
    public class tododb : DbContext
    {
        public tododb()
            : base("name=DefaultConnection")
        {
        }

        public virtual DbSet<todo> todos { get; set; }
        // What does overide do?
        // What does the OnModelCreating method do?
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<todo>()
                .Property(e => e.task)
                .IsUnicode(false);
        }
    }
}