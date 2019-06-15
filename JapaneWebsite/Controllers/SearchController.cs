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
    
        public List<ThemeOfPost> GetThemeOfPosts(string SearchString)
        {
            return db.ThemeOfPosts.Where(s => s.Name.Contains(SearchString)).ToList();
        }

        public List<StudyPost> GetStudyPostByThemeOfPost(int? id)
        {
            
            return db.StudyPosts.Where(s=>s.IdThemePost == id).ToList();
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
        public ActionResult IndexByTheme(int? id)
        {
        
            ViewModel model = new ViewModel();
            
            model.studyPosts = GetStudyPostByThemeOfPost(id);
            return View(model);
        }

    }
}