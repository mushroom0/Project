package test.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import test.dto.UsersDto;
import test.util.DbcpBean;
public class UsersDao {
    private static UsersDao dao;
    private UsersDao(){}
    public static UsersDao getInstance(){
        if(dao==null){
            dao=new UsersDao();
        }
        return dao;
    }
    //회원정보를 저장하는 메소드 
    public boolean insert(UsersDto dto){
        Connection conn = null;
        PreparedStatement pstmt = null;
        int flag = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "INSERT INTO users "
                    + "(name, id, pwd, email, telephone, addr, favorite_kind, favorite_area, signup_date)"
                    + " VALUES(?, ?, ?, ?, ?, ?, ?, ?, SYSDATE)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getId());
            pstmt.setString(3, dto.getPwd());
            pstmt.setString(4, dto.getEmail());
            pstmt.setString(5, dto.getTelephone());
            pstmt.setString(6, dto.getAddr());
            pstmt.setString(7, dto.getFavorite_kind());
            pstmt.setString(8, dto.getFavorite_area()); 
            flag = pstmt.executeUpdate();
        } catch (SQLException se) {
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
    
    //아이디 비밀번호가 유효한지 여부를 리턴하는 메소드
    public boolean isValid(UsersDto dto){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        //아이디와 비밀번호가 맞는 정보인지 여부 
        boolean isValid=false;
        try {
            conn = new DbcpBean().getConn();
            String sql = "SELECT * FROM users"
                    + " WHERE id=? AND pwd=?";
            pstmt = conn.prepareStatement(sql);
            //? 에 아이디와 비밀번호를 바인딩하고 
            pstmt.setString(1, dto.getId());
            pstmt.setString(2, dto.getPwd());
            //SELECT 해서 
            rs = pstmt.executeQuery();
            while (rs.next()) {//row 가 하나라도 있으면 
                isValid=true; //유효한 정보이다. 
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
            }
        }
        //아이디 비밀번호가 유효한 정보인지 여부를 리턴해준다.
        return isValid;
    }//isValid()
    
    //회원 가입된 정보를 리턴해주는 메소드
    public UsersDto getData(String id){
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        UsersDto dto=null;
        try {
            conn = new DbcpBean().getConn();
            String sql = "SELECT name, pwd, email, telephone, addr, favorite_kind, favorite_area, signup_date FROM users"
                    + " WHERE id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                dto=new UsersDto();
                dto.setId(id);
                dto.setName(rs.getString("name"));
                dto.setPwd(rs.getString("pwd"));
                dto.setEmail(rs.getString("email"));
                dto.setTelephone(rs.getString("telephone"));
                dto.setAddr(rs.getString("addr"));
                dto.setFavorite_kind(rs.getString("favorite_kind"));
                dto.setFavorite_area(rs.getString("favorite_area"));
                dto.setSignup_date(rs.getString("signup_date"));
            }
        } catch (SQLException se) {
            se.printStackTrace();
        } finally {
            try {
                if (rs != null)
                    rs.close();
                if (pstmt != null)
                    pstmt.close();
                if (conn != null)
                    conn.close();
            } catch (Exception e) {
            }
        }
        return dto;
    }
    
    //회원정보를 삭제하는 메소드
    public boolean delete(String id){
        Connection conn = null;
        PreparedStatement pstmt = null;
        int flag = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "delete from users where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            flag = pstmt.executeUpdate();
        } catch (SQLException se) {
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
    }
    
    //회원정보를 수정하는 메소드
    public boolean update(UsersDto dto){
        Connection conn = null;
        PreparedStatement pstmt = null;
        int flag = 0;
        try {
            conn = new DbcpBean().getConn();
            String sql = "update users set name=?,pwd=?,email=?,telephone=?,addr=?,favorite_kind=?,favorite_area=? "
                    + "where id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, dto.getName());
            pstmt.setString(2, dto.getPwd());
            pstmt.setString(4, dto.getEmail());
            pstmt.setString(5, dto.getTelephone());
            pstmt.setString(6, dto.getAddr());
            pstmt.setString(7, dto.getFavorite_kind());
            pstmt.setString(8, dto.getFavorite_area());
            pstmt.setString(9, dto.getId());
            flag = pstmt.executeUpdate();
        } catch (SQLException se) {
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
    }
    
}//class






