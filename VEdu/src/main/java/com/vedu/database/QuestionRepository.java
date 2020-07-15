package com.vedu.database;
import org.springframework.data.jpa.repository.JpaRepository;

import com.vedu.model.Question;

public interface QuestionRepository extends JpaRepository<Question,Integer> {

    Question findQuestionByPostedbyAndTimestampAndTopic(String user,String timestamp, String topic);
}
