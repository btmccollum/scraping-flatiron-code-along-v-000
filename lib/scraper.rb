require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  def get_page
    Nokogiri::HTML(open("https://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

  def get_courses
    self.get_page.css(".post")
  end

  def make_courses
    self.get_courses.each do |page|
      course = Course.new
      course.title = page.css("h2").text
      course.schedule = page.css(".date").text
      course.description = page.css("p").text
    end
  end

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
end

  def get_page
    Nokogiri::HTML(open("https://learn-co-curriculum.github.io/site-for-scraping/courses"))
    # 
    # page.css(".post").each do |post|
    #   course = Course.new
    #   course.title = post.css("h2").text
    #   course.schedule = post.css(".date").text
    #   course.description = post.css("p").text
    # end
  end

  def get_courses
    # # page = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/site-for-scraping/courses"))
    # title = self.get_pagepage.css(".post").first.css(".date").text
    #
    # schedule = page.css(".post").first.css(".date").text
    #
    # description = page.css(".post").first.css("p").text
  end

  def make_courses
  end

  def print_courses
  self.make_courses
  Course.all.each do |course|
    if course.title
      puts "Title: #{course.title}"
      puts "  Schedule: #{course.schedule}"
      puts "  Description: #{course.description}"
    end
   end
  end
end

binding.pry
Scraper.new.get_page

