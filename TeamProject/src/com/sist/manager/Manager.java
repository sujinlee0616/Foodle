package com.sist.manager;

import java.util.ArrayList;
import java.util.Date;

import com.sist.manager.*;
import com.sist.vo.*;
import com.sist.dao.*;

public class Manager {

	public static void main(String[] args) {
		////////////////////////////maininfo////////////////////
		AreacodeManager am=new AreacodeManager();
		
		
//		MainInfoManager ifm = new MainInfoManager();
//		SubinfoManager sm=new SubinfoManager();
//		
//		ArrayList<MainInfoVO> mainlist = new  ArrayList<MainInfoVO>();
//		
//		MainInfoDAO dao=MainInfoDAO.newInstance();
//		
//		
//		dao.mainInfoCreate();
//		System.out.println("create Main table!");
//		
//		mainlist = ifm.mainInfoAllData(am.AreacodeAllData());
//		
//		
//		
//		int k=1;
//		
//		for(MainInfoVO vo:mainlist)
//		{
//			dao.mainInfoInsert(vo);	
//			
//			System.out.println("MainInfo Count: "+k);
//			k++;
//			try{
//				
//				Thread.sleep(100);
//				
//			}catch(Exception ex) {}	
//			
//		}
//		System.out.println("Maininfo parsing done!!");
//		////////////////////////////subinfo////////////////////
//		SubinfoDAO sdao=new SubinfoDAO();
//		sdao.SubInfoCreate();
//		System.out.println("create Sub table!");
//		sm.InfoAllData(am.AreacodeAllData());
//		System.out.println("Subinfo parsing done!!");
//		
//		////////////////////reserveinfo////////////////////////
//		
//		ReserveInfoManager rim = new ReserveInfoManager();
//		ReserveInfoDAO rdao=new ReserveInfoDAO();
//		rdao.ReserveInfoCreate();
//		System.out.println("create Reserveinfo table!");
//		rim.ReserveInfoData(am.AreacodeAllData());
//		System.out.println("Reserveinfo parsing done!!");
		////////////////////menu///////////////////////////
		MenuManager mm=new MenuManager();
		MenuDAO md=new MenuDAO();
		md.menuCreate();
		System.out.println("CREATE TABLE menu!!");
		
		ArrayList<MenuVO> menulist = mm.MenuAllData(am.AreacodeAllData());
		
		int menu_k=1;
		for(MenuVO vo:menulist) {
			md.menuInsert(vo);
			try {
				Thread.sleep(100);
			} catch(Exception ex) {
				ex.printStackTrace();
			}
			System.out.println("Menu_k="+menu_k);
			menu_k++;
		}
		System.out.println("MENU PARSING END!!");
		/////////////////////IMAGE/////////////////////////
		ImageManager im=new ImageManager();
		ImageDAO id=new ImageDAO();
		id.CreateImageTable();
		System.out.println("CREATE image table!!");
		im.ImageAllData(am.AreacodeAllData());
		System.out.println("image table parsing done!");
		
	}
}
