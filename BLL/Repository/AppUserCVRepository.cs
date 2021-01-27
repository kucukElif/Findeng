using BLL.Abstract;
using DAL.Context;
using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Repository
{
    public class AppUserCVRepository : IAppUserCV
    {
        private readonly AppDbContext context;

        public AppUserCVRepository(AppDbContext context)
        {
            this.context = context;
        }
        public void Add(AppUserCV entity)
        {
            context.AppUserCV.Add(entity);
            context.SaveChanges();
        }

        public List<AppUserCV> GetActive()
        {
           return context.AppUserCV.Where(x=>x.Status==DAL.Entity.Enum.Status.Active).ToList();

        }

        public AppUserCV GetActiveCV()
        {
            return context.AppUserCV.Where(x => x.Status == DAL.Entity.Enum.Status.Active).FirstOrDefault();
        }

        public AppUserCV GetById(Guid id)
        {
            return context.AppUserCV.FirstOrDefault(x => x.ID == id);
        }

      

        public void Update(AppUserCV entity)
        {
            context.Entry(entity).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            context.SaveChanges();
        }
    }
}
