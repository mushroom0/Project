package test.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import test.dto.PlanDto;
import test.util.DbcpBean;
public class PlanDao {
    private static PlanDao dao;
    private PlanDao(){}
    public static PlanDao getInstance(){
        if(dao==null){
            dao=new PlanDao();
        }
        return dao;
    }
    
    //row 개수 반환하는 메소드
    public int countRow(PlanDto dto){
    	Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        int rows = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "SELECT count(*) FROM festival_plan";
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if(rs.next()){
            	rows = rs.getInt("count(*)");
            }
        } catch (SQLException se){
            se.printStackTrace();
        } finally {
            try {
            	if (rs != null)rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
            }
        }
    	return rows;
    }//countRow();
    
    //공연 기획 정보를 저장하는 메소드 
    public boolean insert(PlanDto dto){
        Connection conn = null;
        PreparedStatement pstmt = null;
        int flag = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "INSERT INTO festival_plan "
                    + "(num_pk, title, writer, content, planperson, letterdate)"
                    + " VALUES(festival_plan_seq.nextval, ?, ?, ?, ?, SYSDATE)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getTitle());
            pstmt.setString(2, dto.getWriter());
            pstmt.setString(3, dto.getContent());
            pstmt.setString(4, dto.getPlanperson());
            flag = pstmt.executeUpdate();
        } catch (SQLException se){
            se.printStackTrace();
        } finally {
            try {
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
            }
        }
        if (flag > 0) {
            return true;
        } else {
            return false;
        }
    }//insert()
    public List<PlanDto> getList(){
          Connection conn=null;
          PreparedStatement pstmt=null;
          ResultSet rs=null;
          List<PlanDto> list=new ArrayList<PlanDto>();
          try{
             conn=new DbcpBean().getConn();
             String sql="SELECT num_pk,writer,title,content,planperson,letterdate"
                   + " FROM festival_plan"
                   + " ORDER BY num_pk DESC";
             pstmt=conn.prepareStatement(sql);
              
             rs=pstmt.executeQuery();
             while(rs.next()){
                int num_pk=rs.getInt("num_pk");
                String writer=rs.getString("writer");
                String title=rs.getString("title");
                String content=rs.getString("content");
                String planperson=rs.getString("planperson");
                String letterdate=rs.getString("letterdate");
                
                
                PlanDto dto=new PlanDto();
                dto.setNum_pk(num_pk);
                dto.setWriter(writer);
                dto.setTitle(title);
                dto.setContent(content);
                dto.setPlanperson(planperson);
                dto.setLetterdate(letterdate);
                
                list.add(dto);
             }
          }catch(Exception e){
             e.printStackTrace();
          }finally{
             try{
                if(rs!=null)rs.close();
                if(pstmt!=null)pstmt.close();
                if(conn!=null)conn.close();
             }catch(Exception e){}
          }
          //list return
          return list;
       }//getList()
    
//	인자로 전달되는 번호에 해당하는 글 정보를 리턴해주는 method
	public PlanDto getData(int num_pk){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PlanDto dto = null;
		try{
			conn = new DbcpBean().getConn();
			String sql = "SELECT num_pk, title, writer, content, planperson, letterdate FROM festival_plan WHERE num_pk=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num_pk);
			// ? 에 값 바인딩하고 sql문 실행
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				int num_pk1 = rs.getInt("num_pk");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String content = rs.getString("content");
				String planperson = rs.getString("planperson");
				String letterdate = rs.getString("letterdate");
				
				dto = new PlanDto(num_pk1, title, writer, content, planperson, letterdate);
				// 글 정보를 BoardDto 에 담기
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e){}
		}
		return dto;
	} // getData()
}