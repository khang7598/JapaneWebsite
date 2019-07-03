using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JapaneWebsite;
using PagedList;

namespace JapaneWebsite.Controllers
{
    public class LearningPostsController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: LearningPosts
        public ActionResult Index(int? Page_No, int Size_Of_Page = 5)
        {
            int Number_Of_Page = (Page_No) ?? 1;
            var studyPosts = db.StudyPosts.Include(s => s.Level).Include(s => s.ThemeOfPost).OrderBy(s => s.IdStudyPost).ToPagedList(Number_Of_Page, Size_Of_Page);
            return View(studyPosts);
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
