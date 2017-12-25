package com.vishwa.service;

import com.vishwa.dao.VisitorDao;
import com.vishwa.pojo.Visitor;

public class StagingService {

	
	public boolean saveVisitiorInformation(Visitor v)
	{
		System.out.println("in StagingService saveVisitiorInformation");
		VisitorDao vDaoObj=new VisitorDao();
		vDaoObj.saveVisitorInfo(v);
		return true;
	}
}
