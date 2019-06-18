using JapaneWebsite.Models;
using PagedList;
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

        public List<Volcabulary> GetVolcabularies(string name)
        {

            return db.Volcabularies.Where(s=>s.Kanji.Contains(name) || s.Furigana.Contains(name) || s.Meaning.Contains(name)).ToList();
        }
        public List<Volcabulary> GetVolcabulariesByLevel(string name)
        {

            return db.Volcabularies.Where(s=>s.N.Contains(name)).ToList();
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
            model.volcabularies = GetVolcabularies(SearchString);
            return View(model);
        }
        public ActionResult IndexByLevel(string SearchString,int? Page_No, int Size_Of_Page = 10)
        {
            if (String.IsNullOrEmpty(SearchString))
            {
                SearchString = "";
            }
            ViewBag.SearchString = SearchString;
            int Number_Of_Page = (Page_No) ?? 1;
            var dba = db.Volcabularies.Where(s => s.N.Contains(SearchString)).OrderBy(s => s.IdVol).ToPagedList(Number_Of_Page, Size_Of_Page);
            return View(dba);
        }
        public ActionResult IndexByLevelGrammar(string SearchString, int? Page_No, int Size_Of_Page = 10)
        {
            if (String.IsNullOrEmpty(SearchString))
            {
                SearchString = "";
            }
            ViewBag.SearchString = SearchString;
            int Number_Of_Page = (Page_No) ?? 1;
            var dba = db.StudyPosts.Where(s => s.N.Contains(SearchString)).OrderBy(s => s.IdStudyPost).ToPagedList(Number_Of_Page, Size_Of_Page);
            return View(dba);
        }
        public ActionResult IndexByTheme(int? id,string name)
        {
            
            ViewModel model = new ViewModel();
            model.culturalPosts = GetCulturalByThemeOfPost(id, name);
            model.studyPosts = GetStudyPostByThemeOfPost(id,name);
            //model.studyPostsPagelist=db.StudyPosts.OrderBy(s=>s.IdStudyPost)
            return View(model);
        }

        public List<StudyPost> GetAllGrammarN(string name)
        {
            return db.StudyPosts.Where(s => s.Name.Contains(name)).OrderByDescending(s => s.IdStudyPost).ToList();
        }



        public ActionResult GroupPost(string name)
        {
            ViewModel model = new ViewModel();
            model.studyPosts = GetAllGrammarN(name);
            return View(model);
        }

    }
}