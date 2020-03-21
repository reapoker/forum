package com.fc.service;

import com.fc.mapper.PostMapper;
import com.fc.mapper.TopicMapper;
import com.fc.mapper.UserMapper;
import com.fc.model.Post;
import com.fc.model.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class TopicService {


    @Autowired
    private TopicMapper topicMapper;

    //获取话题列表
    public List<Topic> listTopic() {
        return topicMapper.listTopic();
    }

    //获取图片列表
    public List<String> listImage() {
        return topicMapper.listImage();
    }
}

