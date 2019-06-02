using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JapaneWebsite;

namespace JapaneWebsite.Controllers
{
    public class LearningPostsController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: LearningPosts
        public ActionResult Index()
        {
            var studyPosts = db.StudyPosts.Include(s => s.Level).Include(s => s.ThemeOfPost);
            return View(studyPosts.ToList());
        }

        // GET: LearningPosts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyPost studyPost = db.StudyPosts.Find(id);
            if (studyPost == null)
            {
                return HttpNotFound();
            }
            return View(studyPost);
        }

        // GET: LearningPosts/Create
        public ActionResult Create()
        {
            ViewBag.N = new SelectList(db.Levels, "N", "N");
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name");
            return View();
        }

        // POST: LearningPosts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdStudyPost,Name,Description,Date,Img,Detail,N,IdThemePost")] StudyPost studyPost)
        {
            if (ModelState.IsValid)
            {
                db.StudyPosts.Add(studyPost);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.N = new SelectList(db.Levels, "N", "N", studyPost.N);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", studyPost.IdThemePost);
            return View(studyPost);
        }

        // GET: LearningPosts/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyPost studyPost = db.StudyPosts.Find(id);
            if (studyPost == null)
            {
                return HttpNotFound();
            }
            ViewBag.N = new SelectList(db.Levels, "N", "N", studyPost.N);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", studyPost.IdThemePost);
            return View(studyPost);
        }

        // POST: LearningPosts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdStudyPost,Name,Description,Date,Img,Detail,N,IdThemePost")] StudyPost studyPost)
        {
            if (ModelState.IsValid)
            {
                db.Entry(studyPost).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.N = new SelectList(db.Levels, "N", "N", studyPost.N);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", studyPost.IdThemePost);
            return View(studyPost);
        }

        // GET: LearningPosts/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            StudyPost studyPost = db.StudyPosts.Find(id);
            if (studyPost == null)
            {
                return HttpNotFound();
            }
            return View(studyPost);
        }

        // POST: LearningPosts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            StudyPost studyPost = db.StudyPosts.Find(id);
            db.StudyPosts.Remove(studyPost);
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
