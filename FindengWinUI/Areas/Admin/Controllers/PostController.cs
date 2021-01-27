using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using BLL.Abstract;
using DAL.Entity;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace FindengWinUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles ="Admin")]
    public class PostController : Controller
    {
        private readonly IPostService postService;

        public PostController(IPostService postService)
        {
            this.postService = postService;
        }
        public IActionResult Index()
        {
            return View(postService.GetActive());
        }

        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(Post model,IFormFile image)
        {
            try
            {
                string path;
                if (image==null)
                {
                    path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images", "noimage.jpg");
                    model.ImagePath = "noimage.jpg";

                }
                else
                {
                    path = Path.GetFullPath("wwwroot\\images\\" + image.FileName);
                    using (var stream=new FileStream(path, FileMode.Create))
                    {
                        await image.CopyToAsync(stream);
                    }
                    model.ImagePath = image.FileName;
                }
                postService.Add(model);
                return RedirectToAction("Index");
            }
            catch (Exception)
            {
                return View(model);
            }
        }
        public IActionResult Edit(Guid id)
        {
            Post post = postService.GetByID(id);
            return View(post);
        }
        [HttpPost]
        public async Task<IActionResult> Edit(Post post, IFormFile image)
        {
            try
            {
                string path;
                if (image == null)
                {
                    if (post.ImagePath != null)
                    {
                        postService.Update(post);
                        return RedirectToAction("Index");
                    }
                    path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images\\", "noimage.jpg");
                    post.ImagePath = "noimage.jpg";

                }
                else
                {
                    path = Path.GetFullPath("wwwroot\\images\\" + image.FileName);
                    using (var stream = new FileStream(path, FileMode.Create))
                    {
                        await image.CopyToAsync(stream);
                    }
                    post.ImagePath = image.FileName;
                }
                postService.Update(post);
                return RedirectToAction("Index");

            }
            catch
            {
                return View(post);

            }
        }

        public IActionResult Delete(Guid id)
        {
            return View(postService.GetByID(id));
        }
        [HttpPost]
        public IActionResult Delete(Post post)
        {
            try
            {
                postService.Remove(post.ID);
                return RedirectToAction("Index");
            }
            catch (Exception)
            {
                return View();
            }
        }
    }
}
