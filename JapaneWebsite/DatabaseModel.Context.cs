﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JapaneWebsite
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JapaneDataEntities : DbContext
    {
        public JapaneDataEntities()
            : base("name=JapaneDataEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CulturalPost> CulturalPosts { get; set; }
        public virtual DbSet<Level> Levels { get; set; }
        public virtual DbSet<Place> Places { get; set; }
        public virtual DbSet<Question> Questions { get; set; }
        public virtual DbSet<StudyPost> StudyPosts { get; set; }
        public virtual DbSet<Test> Tests { get; set; }
        public virtual DbSet<ThemeOfPost> ThemeOfPosts { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
    }
}
