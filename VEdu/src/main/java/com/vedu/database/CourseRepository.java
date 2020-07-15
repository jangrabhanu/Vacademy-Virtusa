package com.vedu.database;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vedu.model.Course;

public interface CourseRepository extends JpaRepository<Course,Integer>
{
    Course findCourseByCoursenameAndAuthor(String name, String author);
    Course findCourseByCoursecode(String course_code);
    Course findCourseByCourseid(Integer id);
    Boolean existsCourseByCourseid(Integer id);
    void removeCourseByCourseid(Integer id);
}