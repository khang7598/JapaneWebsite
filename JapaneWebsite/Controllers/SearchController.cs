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
    

        public List<StudyPost> GetStudyPostByThemeOfPost(int? id,string name)
        {

            return db.StudyPosts.Where(s => s.IdThemePost == id || s.Name.Contains(name)).ToList();
        }

        public List<CulturalPost> GetCulturalByThemeOfPost(int? id,string name)
        {

            return db.CulturalPosts.Where(s => s.IdThemePost == id||s.Name.Contains(name)).ToList();
        }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
=======
>>>>>>> parent of 55f86b7... update
        public List<CulturalPost> GetCulturalPostByThemeOfPost(int? id)
        {

            return db.CulturalPosts.Where(s => s.IdThemePost == id).ToList();
        }
>>>>>>> parent of 55f86b7... update
=======
        public List<CulturalPost> GetCulturalPostByThemeOfPost(int? id,string name)
=======
        public List<CulturalPost> GetCulturalPostByThemeOfPost(int? id)
>>>>>>> parent of 55f86b7... update
=======
        public List<CulturalPost> GetCulturalPostByThemeOfPost(int? id)
>>>>>>> parent of 55f86b7... update
        {

            return db.CulturalPosts.Where(s => s.IdThemePost == id).ToList();
        }
>>>>>>> parent of 1ded4e8... Revert "Update"
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
        public ActionResult IndexByTheme(int? id,string name)
        {
        
            ViewModel model = new ViewModel();
<<<<<<< HEAD
            model.culturalPosts = GetCulturalByThemeOfPost(id, name);
            model.studyPosts = GetStudyPostByThemeOfPost(id,name);
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            
=======
            model.culturalPosts = GetCulturalPostByThemeOfPost(id);
>>>>>>> parent of 55f86b7... update
=======
            model.culturalPosts = GetCulturalPostByThemeOfPost(id);
>>>>>>> parent of 55f86b7... update
            model.studyPosts = GetStudyPostByThemeOfPost(id);
=======
            model.culturalPosts = GetCulturalPostByThemeOfPost(id,name);
            model.studyPosts = GetStudyPostByThemeOfPost(id,name);
>>>>>>> parent of 1ded4e8... Revert "Update"
=======
            model.culturalPosts = GetCulturalPostByThemeOfPost(id);
            model.studyPosts = GetStudyPostByThemeOfPost(id);
>>>>>>> parent of 55f86b7... update
=======
            model.culturalPosts = GetCulturalPostByThemeOfPost(id);
            model.studyPosts = GetStudyPostByThemeOfPost(id);
>>>>>>> parent of 55f86b7... update
>>>>>>> 25015e5a600c37cb4d06961ee5ff184b30960434
            return View(model);
        }

    }
}