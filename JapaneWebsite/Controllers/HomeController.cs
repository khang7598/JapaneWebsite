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

namespace JapaneWebsite.Controllers
{
    public class HomeController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();
        // GET: Home
        public List<StudyPost> GetStudyPost()
        {
            return db.StudyPosts.OrderByDescending(s => s.IdStudyPost).Take(3).ToList();
        }
        public List<ThemeOfPost> GetThemeOfPosts()
        {
            return db.ThemeOfPosts.ToList();
        }
        public List<CulturalPost> GetCulturalPosts()
        {
            return db.CulturalPosts.OrderByDescending(s => s.IdCultural).Take(3).ToList();
        }
        public List<Test> GetTestPosts()
        {
            return db.Tests.ToList();
        }

        public ActionResult Index()
        {
            ViewModel model = new ViewModel();
            model.studyPosts = GetStudyPost();
            model.themeOfPosts = GetThemeOfPosts();
            model.culturalPosts = GetCulturalPosts();
            model.Tests = GetTestPosts();
            return View(model);
        }
    }
}