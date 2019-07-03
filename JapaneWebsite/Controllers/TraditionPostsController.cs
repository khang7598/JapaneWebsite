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
    public class TraditionPostsController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: TraditionPosts
        public ActionResult Index(int? Page_No, int? cateId, int Size_Of_Page = 8)
        {
            int Number_Of_Page = (Page_No) ?? 1;
            var culturalPosts = db.CulturalPosts.Include(c => c.Place).Include(c => c.ThemeOfPost).OrderBy(s => s.IdCultural).ToPagedList(Number_Of_Page, Size_Of_Page);
            return View(culturalPosts);
        }

        // GET: TraditionPosts/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            CulturalPost culturalPost = db.CulturalPosts.Find(id);
            if (culturalPost == null)
            {
                return HttpNotFound();
            }
            return View(culturalPost);
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
