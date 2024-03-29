﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JapaneWebsite;
using PagedList;

namespace JapaneWebsite.Areas.Admin.Controllers
{
    [Authorize(Roles = "MANAGER,ADMIN")]
    public class CulturalPostsController : Controller
    {
       
        private JapaneDataEntities db = new JapaneDataEntities();

        // GET: Admin/CulturalPosts
        public ActionResult Index(int? Page_No, int? cateId, int Size_Of_Page = 4)
        {
            int Number_Of_Page = (Page_No) ?? 1;
            var culturalPosts = db.CulturalPosts.Include(c => c.Place).Include(c => c.ThemeOfPost).OrderBy(c => c.IdCultural).ToPagedList(Number_Of_Page, Size_Of_Page); ;
            return View(culturalPosts);
        }

        // GET: Admin/CulturalPosts/Details/5
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

        // GET: Admin/CulturalPosts/Create
        public ActionResult Create()
        {
            ViewBag.IdPlace = new SelectList(db.Places, "IdPlace", "CityName");
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name");
            return View();
        }

        // POST: Admin/CulturalPosts/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "IdCultural,Name,Description,Date,Img,Detail,IdPlace,IdThemePost")] CulturalPost culturalPost)
        {
            if (ModelState.IsValid)
            {
                db.CulturalPosts.Add(culturalPost);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdPlace = new SelectList(db.Places, "IdPlace", "CityName", culturalPost.IdPlace);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", culturalPost.IdThemePost);
            return View(culturalPost);
        }

        // GET: Admin/CulturalPosts/Edit/5
        public ActionResult Edit(int? id)
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
            ViewBag.IdPlace = new SelectList(db.Places, "IdPlace", "CityName", culturalPost.IdPlace);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", culturalPost.IdThemePost);
            return View(culturalPost);
        }

        // POST: Admin/CulturalPosts/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost, ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "IdCultural,Name,Description,Date,Img,Detail,IdPlace,IdThemePost")] CulturalPost culturalPost)
        {
            if (ModelState.IsValid)
            {
                db.Entry(culturalPost).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdPlace = new SelectList(db.Places, "IdPlace", "CityName", culturalPost.IdPlace);
            ViewBag.IdThemePost = new SelectList(db.ThemeOfPosts, "IdThemePost", "Name", culturalPost.IdThemePost);
            return View(culturalPost);
        }
        [Authorize(Roles = "ADMIN")]
        // GET: Admin/CulturalPosts/Delete/5
        public ActionResult Delete(int? id)
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

        // POST: Admin/CulturalPosts/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            CulturalPost culturalPost = db.CulturalPosts.Find(id);
            db.CulturalPosts.Remove(culturalPost);
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
