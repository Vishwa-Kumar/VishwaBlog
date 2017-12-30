package com.vishwa.service;

import java.util.ArrayList;

import com.vishwa.dao.LifeBlogDao;
import com.vishwa.dao.VisitorDao;
import com.vishwa.pojo.LifeBlogPojo;
import com.vishwa.pojo.Visitor;

public class StagingService {

	
	public boolean saveVisitiorInformation(Visitor v)
	{
		System.out.println("in StagingService saveVisitiorInformation");
		VisitorDao vDaoObj=new VisitorDao();
		vDaoObj.saveVisitorInfo(v);
		return true;
	}
	public ArrayList<LifeBlogPojo> getLifeBlogList()
	{
		System.out.println("in StagingService saveVisitiorInformation");
		ArrayList<LifeBlogPojo> lifeBlogList=new ArrayList<>();
		LifeBlogDao lBlogDaoObj=new LifeBlogDao();
		lifeBlogList=lBlogDaoObj.fetchLifeBlogList();
		return lifeBlogList;
	}
}
