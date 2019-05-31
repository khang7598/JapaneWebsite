using JapaneWebsite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace JapaneWebsite.Controllers
{
    public class DoTestController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();
        public List<Question> GetQuestion(int? id)
        {
            return db.Questions.Where(a=>a.IdTest==id).ToList();
        }
        // GET: DoTest
        public ActionResult Index()
        {
            return View();
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
    }
}