using DAL.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace BLL.Abstract
{
    public interface IAppUserCV
    {
        void Add(AppUserCV entity);
        void Update(AppUserCV entity);
        List<AppUserCV> GetActive();
        AppUserCV GetActiveCV();
        AppUserCV GetById(Guid id);
      


    }
}
