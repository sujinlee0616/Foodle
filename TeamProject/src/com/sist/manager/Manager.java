package com.sist.manager;

import java.util.ArrayList;
import java.util.Date;

import com.sist.manager.*;
import com.sist.vo.*;
import com.sist.dao.*;

public class Manager {

	public static void main(String[] args) {

		
//		ThemaManager tm = new ThemaManager();
		AreacodeManager am = new AreacodeManager();
//		ImageManager im = new ImageManager();
//		InfoManager ifm = new InfoManager();
//		
//		ArrayList<MainThemaVO> mtVO = new ArrayList<MainThemaVO>();
//		ArrayList<DetailThemaVO> dtVO = new ArrayList<DetailThemaVO>();
		ArrayList<AreacodeVO> aVO = new ArrayList<AreacodeVO>();
//		ArrayList<ImageVO> iVO = new ArrayList<ImageVO>();
//		ArrayList<InfoVO> ifVO = new ArrayList<InfoVO>();		
//		
//		mtVO=tm.MainThemaAllData();
//		dtVO=tm.DetailThemaAllData();
		aVO=am.AreacodeAllData();
//		iVO=im.ImageAllData(aVO);
//		ifVO=ifm.InfoAllData(aVO);
		
		
		
		AreacodeDAO a = new AreacodeDAO();
//		System.out.println(aVO.size());
		
		
		a.AreacodeCreate();
		int k=1;
		for (int i = 0; i < aVO.size(); i++) {
			a.AreacodeInsert(aVO.get(i));
			System.out.println("k="+k);
			try {
				Thread.sleep(100);
			} catch(Exception ex) {
				ex.printStackTrace();
			}

			k++;
		}
		System.out.println("!!END!!");
	
	}
}
