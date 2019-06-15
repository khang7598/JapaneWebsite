﻿using JapaneWebsite.Models;
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
            model.culturalPosts = GetCulturalByThemeOfPost(id, name);
            model.studyPosts = GetStudyPostByThemeOfPost(id,name);
            return View(model);
        }

        public List<StudyPost> GetAllGrammarN3(string name)
        {
            return db.StudyPosts.Where(s=>s.Name.Contains(name)).ToList();
        }



        public ActionResult GroupPost(string name)
        {
            ViewModel model = new ViewModel();
            model.studyPosts = GetAllGrammarN3(name);




            return View(model);
        }

    }
}