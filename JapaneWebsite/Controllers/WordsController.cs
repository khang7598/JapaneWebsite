using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using JapaneWebsite;
using JapaneWebsite.Models;
using PagedList;

namespace JapaneWebsite.Controllers
{
    public class WordsController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();

        public List<Volcabulary> GetVolcabularies()
        {
            return db.Volcabularies.ToList();
        }
        public IPagedList<Volcabulary> toPageList(int? Page_No, int Size_Of_Page = 5)
        {
            int Number_Of_Page = (Page_No) ?? 1;
            return db.Volcabularies.OrderBy(s => s.IdVol).ToPagedList(Number_Of_Page, Size_Of_Page);
        }
        // GET: Words
        public ActionResult Index(int? Page_No, int Size_Of_Page = 10)
        {

            int Number_Of_Page = (Page_No) ?? 1;


            var wordPosts = db.Volcabularies.Include(s => s.Level).OrderBy(s => s.IdVol).ToPagedList(Number_Of_Page, Size_Of_Page);
            return View(wordPosts);
        }
    }
}
