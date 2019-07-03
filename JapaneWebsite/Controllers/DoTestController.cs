using JapaneWebsite.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace JapaneWebsite.Controllers
{
    [Authorize(Roles = "MANAGER,ADMIN,MEMBER")]
    public class DoTestController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();
        public List<Question> GetQuestion(int? id)
        {
            return db.Questions.Where(a=>a.IdTest==id).ToList();
        }
        // GET: DoTest
        public ActionResult Index(int? Page_No, int? cateId, int Size_Of_Page = 8)
        {
            
                int Number_Of_Page = (Page_No) ?? 1;
                var testPosts = db.Tests.OrderBy(s => s.IdTest).ToPagedList(Number_Of_Page, Size_Of_Page);
                return View(testPosts);
 
        }

        public ActionResult Test(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Question question = db.Questions.Find(id);
            
            if (question == null)
            {
                return HttpNotFound();
            }
            ViewModel model = new ViewModel();
            model.questions = GetQuestion(id);
            return View(model);
        }

        public ActionResult submit()
        {
            return View();
        }

    }
}