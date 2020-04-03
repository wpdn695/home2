package book.borad.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import book.board.vo.BookBoard;

public class BookBoardDao {
	
	public int del(BookBoard b) throws Exception {
		String sql="DELETE FROM bookcon WHERE SEQ=?";

		Class.forName("oracle.jdbc.driver.OracleDriver");
		//접속
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		
		
		//실행
		
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, b.getSeq());
		int af=pstmt.executeUpdate();
		
		
		
		return af;
		
		
	}

	public BookBoard getBookBoard(String seq) throws Exception {
		String sql="select*from bookcon where seq="+seq;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		String user="scott";
		String pw="123456";
		Connection con=DriverManager.getConnection(url, user, pw);
		//실행
		Statement st=con.createStatement();


		//결과
		ResultSet rs=st.executeQuery(sql);//select 실행
		rs.next();
		
		BookBoard b=new BookBoard();
		b.setSid(rs.getString("sid"));
		b.setSeq(rs.getString("seq"));
		b.setTitle(rs.getString("title"));
		b.setContent(rs.getString("content"));
		b.setRegdate(rs.getDate("regdate"));
		b.setHit(rs.getInt("hit"));
		
		rs.close();
		st.close();
		con.close();
		
		return b;
		
		
	}
}
