using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JapaneWebsite;

namespace JapaneWebsite.Areas.Admin.Controllers
{
    public class ThemeOfPostsController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: Admin/ThemeOfPosts
        public ActionResult Index()
        {
            return View(db.ThemeOfPosts.ToList());
        }

        // GET: Admin/ThemeOfPosts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThemeOfPost themeOfPost = db.ThemeOfPosts.Find(id);
            if (themeOfPost == null)
            {
                return HttpNotFound();
            }
            return View(themeOfPost);
        }

        // GET: Admin/ThemeOfPosts/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/ThemeOfPosts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdThemePost,Name,Detail")] ThemeOfPost themeOfPost)
        {
            if (ModelState.IsValid)
            {
                db.ThemeOfPosts.Add(themeOfPost);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(themeOfPost);
        }

        // GET: Admin/ThemeOfPosts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThemeOfPost themeOfPost = db.ThemeOfPosts.Find(id);
            if (themeOfPost == null)
            {
                return HttpNotFound();
            }
            return View(themeOfPost);
        }

        // POST: Admin/ThemeOfPosts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdThemePost,Name,Detail")] ThemeOfPost themeOfPost)
        {
            if (ModelState.IsValid)
            {
                db.Entry(themeOfPost).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(themeOfPost);
        }

        // GET: Admin/ThemeOfPosts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ThemeOfPost themeOfPost = db.ThemeOfPosts.Find(id);
            if (themeOfPost == null)
            {
                return HttpNotFound();
            }
            return View(themeOfPost);
        }

        // POST: Admin/ThemeOfPosts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ThemeOfPost themeOfPost = db.ThemeOfPosts.Find(id);
            db.ThemeOfPosts.Remove(themeOfPost);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
