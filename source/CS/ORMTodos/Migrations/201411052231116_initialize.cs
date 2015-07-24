namespace ORMTodos.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initialize : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.todos",
                c => new
                    {
                        id = c.Int(nullable: false),
                        task = c.String(nullable: false, maxLength: 128, unicode: false),
                        isDone = c.Boolean(nullable: false),
                    })
                .PrimaryKey(t => new { t.id, t.task, t.isDone });
            
        }
        
        public override void Down()
        {
            DropTable("dbo.todos");
        }
    }
}
