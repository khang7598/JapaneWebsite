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
    [Authorize(Roles = "MANAGER,ADMIN")]
    public class VolcabulariesController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: Admin/Volcabularies
        public ActionResult Index()
        {
            var volcabularies = db.Volcabularies.Include(v => v.Level);
            return View(volcabularies.ToList());
        }

        // GET: Admin/Volcabularies/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volcabulary volcabulary = db.Volcabularies.Find(id);
            if (volcabulary == null)
            {
                return HttpNotFound();
            }
            return View(volcabulary);
        }

        // GET: Admin/Volcabularies/Create
        public ActionResult Create()
        {
            ViewBag.N = new SelectList(db.Levels, "N", "N");
            return View();
        }

        // POST: Admin/Volcabularies/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdVol,Kanji,Furigana,Meaning,N")] Volcabulary volcabulary)
        {
            if (ModelState.IsValid)
            {
                db.Volcabularies.Add(volcabulary);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.N = new SelectList(db.Levels, "N", "N", volcabulary.N);
            return View(volcabulary);
        }

        // GET: Admin/Volcabularies/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volcabulary volcabulary = db.Volcabularies.Find(id);
            if (volcabulary == null)
            {
                return HttpNotFound();
            }
            ViewBag.N = new SelectList(db.Levels, "N", "N", volcabulary.N);
            return View(volcabulary);
        }

        // POST: Admin/Volcabularies/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdVol,Kanji,Furigana,Meaning,N")] Volcabulary volcabulary)
        {
            if (ModelState.IsValid)
            {
                db.Entry(volcabulary).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.N = new SelectList(db.Levels, "N", "N", volcabulary.N);
            return View(volcabulary);
        }
        [Authorize(Roles = "ADMIN")]
        // GET: Admin/Volcabularies/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Volcabulary volcabulary = db.Volcabularies.Find(id);
            if (volcabulary == null)
            {
                return HttpNotFound();
            }
            return View(volcabulary);
        }

        // POST: Admin/Volcabularies/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Volcabulary volcabulary = db.Volcabularies.Find(id);
            db.Volcabularies.Remove(volcabulary);
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
