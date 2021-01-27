using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace BLL.Abstract
{
   public interface ICVFileService
    {
        List<CVFile> GetActive();
        void Add(CVFile entity);
        void Remove(Guid id);
        void Update(CVFile entity);
        CVFile GetById(Guid id);
        List<CVFile> GetByUser(Guid id);
    }
}
