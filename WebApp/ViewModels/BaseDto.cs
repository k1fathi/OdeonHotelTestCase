namespace WebApp.ViewModels
{
    public class BaseResult
    {
        public string ResultMessage { get; set; }
        public bool IsCompleted { get; set; } = false;
    }

    public class SingleResult<Entity> : BaseResult
    {
        public Entity Data { get; set; }
    }

    public class ListResult<ListEntity> : BaseResult
    {
        public List<ListEntity> List { get; set; }
    }

    public class CountResult : BaseResult
    {
        public int Count { get; set; }
    }

    public class PageResult<ListEntity> : BaseResult
    {
        public int CurrentPage { get; set; }
        public int PageCount { get { return PageSize > 0 ? TotalCount / PageSize : 0; } }
        public int PageSize { get; set; }
        public int TotalCount { get; set; }

        public List<ListEntity> DataList { get; set; }
    }
}
