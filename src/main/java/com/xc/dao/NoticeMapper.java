package com.xc.dao;

import java.util.List;

import com.xc.domain.Notice;

public interface NoticeMapper {
 public void insertNotice(Notice notice);
 public List<Notice> findAll();
 public void delete(Integer notice_id);
 public Notice findById(Integer notice_id);
public void updateNotice(Notice notice);
}
