using System;
using SnapObjects.Data;
using SnapObjects.Data.SqlServer;

namespace RetrieveTest
{
    public class SqlContext : SqlServerDataContext
	{
        public SqlContext(string connectionString)
            : this(new SqlServerDataContextOptions<SqlContext>(connectionString))
        {
        }

        public SqlContext(IDataContextOptions<SqlContext> options)
            : base(options)
        {
        }
        
        public SqlContext(IDataContextOptions options)
            : base(options)
        {
        }
    }
}
