using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JapaneWebsite.Models
{
    public class ViewModel
    {
        public IEnumerable<StudyPost> studyPosts { get; set; }
        public IEnumerable<ThemeOfPost> themeOfPosts { get; set; }
        public IEnumerable<CulturalPost> culturalPosts { get; set; }

    }
    
}