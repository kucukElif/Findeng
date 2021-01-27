using BLL.Abstract;
using DAL.Context;
using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Repository
{
    public class AppUserWorkRepository : IAppUserWorkService
    {
        private readonly AppDbContext context;

        public AppUserWorkRepository(AppDbContext context)
        {
            this.context = context;
        }
        public void Add(AppUserWork entity)
        {
            context.AppUserWorks.Add(entity);
            context.SaveChanges();
        }

        public List<AppUserWork> GetActive()
        {
            return context.AppUserWorks.Where(x => x.Status == DAL.Entity.Enum.Status.Active).ToList();
        }

        public AppUserWork GetById(Guid id)
        {
            return context.AppUserWorks.FirstOrDefault(x => x.ID == id);
        }

        public List<AppUserWork> GetByUser(Guid id)
        {
            return context.AppUserWorks.Where(x => x.AppUserId == id && x.Status == DAL.Entity.Enum.Status.Active).ToList();
        }

        public void Remove(Guid id)
        {
            AppUserWork appUserWork = GetById(id);
            appUserWork.Status = DAL.Entity.Enum.Status.Deleted;
            Update(appUserWork);
        }

        public void Update(AppUserWork entity)
        {
            context.Entry(entity).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            context.SaveChanges();
        }
    }
}
