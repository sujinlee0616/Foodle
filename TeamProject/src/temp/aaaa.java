package temp;

import java.util.StringTokenizer;

import javax.sound.midi.Soundbank;

public class aaaa {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String temp="asc:revscor,desc:revscore,desc:revbad,asc:revscore";
		String temp1="asc:revscor,";
		String[] listTemp =temp1.split(",");
		String[] list = new String[4];
		
		System.out.println(listTemp.length);
		for(int i = 0 ; i < listTemp.length ; i++)
		{
			System.out.println(listTemp[0]);
		}
		
		
		
		/*for(int i = 0 ; i < listTemp.length-1 ; i++)
		{	
			if(listTemp[i].indexOf(temp.substring(temp.lastIndexOf(":")))!=-1)
			{
				listTemp[i]="";
			}
		}
		for(int i = 0 ; i < listTemp.length-1 ; i++)
		{
			if(listTemp[i] =="")
			{
				list[i] = listTemp[i+1];
				listTemp[i+1] ="";
			}
			else
			{
				list[i]=listTemp[i];
			}
		}
	
		for(int i = 0 ; i < list.length ; i++)
		{
			System.out.println(i+":"+list[i]);
		}
		for(int i = 0 ; i < listTemp.length ; i++)
		{
			System.out.println(i+":"+listTemp[i]);
		}
	*/
	}
}
