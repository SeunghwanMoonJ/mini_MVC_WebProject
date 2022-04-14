package com.service;

import java.util.List;

import com.dao.DataDao;
import com.dao.mDao;
import com.dto.DataDto;
import com.dto.mDto;

public class DataService {
	private DataDao dDao = new DataDao();
	private mDao M_dao = new mDao();
	
	// *************************************   데이터 입력   *************************************
	public String insertData(DataDto data) {
		String msg = null;
		
		int result = dDao.insertData(data);
		
		if (result >0) {
			msg = "입력 성공";
		} else {
			msg = "입력 실패";
		}
		return msg;
	}
	
	// *************************************   데이터 전체 출력   *************************************
	public List<DataDto> getList() {
		List<DataDto> dList = dDao.selectList();
		
		return dList;
	}
	// *************************************  차트넘버별 데이터 검색   *************************************
	public DataDto getChartno(int chartno) {
		DataDto data = dDao.selectchartno(chartno);
		return data;
	}
	
	// *************************************   데이터 수정   *************************************
	public String updateData(DataDto data) {
		String msg = null;
		
		int result = dDao.updateData(data);
		
		if(result>0) {
			msg = "업데이트 성공";
		}else {
			msg = "업데이트 실패";
		}
		
		
		return msg;
	}
	
	// *************************************   데이터 삭제   *************************************
	public String deleteData(int chartno) {
		String msg = null;
		
		int result = dDao.deleteData(chartno);
		
		if(result > 0) {
			msg = "삭제 성공";
		} else {
			msg = "삭제 실패";
		}
		return msg;
	}
	// *************************************   회원가입 입력   *************************************
	
	public String insertid(mDto mdata) {
		String msg = null;
		
		int mresult = M_dao.insertid(mdata);
		
		if (mresult > 0) {
			msg = "입력 성공";
		} else {
			msg = "입력 실패";
		}
		return msg;
	}

	
}//class end	

