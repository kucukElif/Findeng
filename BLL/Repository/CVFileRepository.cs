using BLL.Abstract;
using DAL.Context;
using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL.Repository
{
    public class CVFileRepository : ICVFileService
    {
        private readonly AppDbContext context;

        public CVFileRepository(AppDbContext context)
        {
            this.context = context;
        }
        public void Add(CVFile entity)
        {
            context.Add(entity);
            context.SaveChanges();
        }

        public List<CVFile> GetActive()
        {
            return context.CVFiles.Where(x => x.Status == DAL.Entity.Enum.Status.Active).ToList();
        }

        public CVFile GetById(Guid id)
        {
            return context.CVFiles.FirstOrDefault(x => x.ID == id);
        }

        public List<CVFile> GetByUser(Guid id)
        {
            return context.CVFiles.Where(x => x.AppUserId == id && x.Status == DAL.Entity.Enum.Status.Active).ToList();
        }

        public void Remove(Guid id)
        {
            CVFile cvFile = GetById(id);
            cvFile.Status = DAL.Entity.Enum.Status.Deleted;
            Update(cvFile);
        }

        public void Update(CVFile entity)
        {
            context.Entry(entity).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            context.SaveChanges();
        }
    }
}
