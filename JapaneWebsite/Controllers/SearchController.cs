using JapaneWebsite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace JapaneWebsite.Controllers
{
    public class SearchController : Controller
    {
        private JapaneDataEntities db = new JapaneDataEntities();
        // GET: Search
        public List<StudyPost> GetStudyPost(string SearchString)
        {
            return db.StudyPosts.Where(s=>s.Name.Contains(SearchString)).ToList();
        }
        public List<CulturalPost> GetCulturalPosts(string SearchString)
        {
            return db.CulturalPosts.Where(s => s.Name.Contains(SearchString)).ToList();
        }
    

        public ActionResult Index(string SearchString)
        {
            if (String.IsNullOrEmpty(SearchString))
            {
                SearchString = "";
            }
            ViewModel model = new ViewModel();
            model.studyPosts = GetStudyPost(SearchString);
            model.culturalPosts = GetCulturalPosts(SearchString);
            return View(model);
        }
    }
}