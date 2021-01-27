using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace BLL.Abstract
{
   public interface IAppUserWorkService
    {
        List<AppUserWork> GetActive();
        AppUserWork GetById(Guid id);
        void Add(AppUserWork entity);
        void Remove(Guid id);
        void Update(AppUserWork entity);
        List<AppUserWork> GetByUser(Guid id);
    }
}
