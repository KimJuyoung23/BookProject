package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BookDAO {
	public Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "kim", "0000");
		return con;
	}

	public int insertNewBook(BookDTO p) throws Exception {
		Connection con = this.getConnection();
		String sql = "insert into book values(book_seq.nextval,?,?,?,'true')";
		PreparedStatement pstat = con.prepareStatement(sql);

		pstat.setString(1, p.getName());
		pstat.setString(2, p.getPublisher());
		pstat.setString(3, p.getWriter());
		int result = pstat.executeUpdate();
		con.commit();
		con.close();
		return result;
	}

	public void outPut() throws Exception {
		Connection con = this.getConnection();
		String sql = "select * from book";
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet rs = state.executeQuery(sql);

		while (rs.next()) {
			System.out.println("<tr>");
			System.out.println("<td>" + rs.getInt("num"));
			System.out.println("<td>" + rs.getString("name"));
			System.out.println("<td>" + rs.getString("publisher"));
			System.out.println("<td>" + rs.getString("writer"));
			System.out.println("</tr>");
		}
		con.close();
	}

	public int deleteBook(int num) throws Exception {
		Connection con = this.getConnection();
		String sql = "delete from book where num=?";
		PreparedStatement pstat = con.prepareStatement(sql);
		pstat.setInt(1, num);
		int result = pstat.executeUpdate();
		return result;
	}

	public int returnBack(int num) throws Exception {
		Connection con = this.getConnection();
		String sql0 = "select * from book where num=?";
		PreparedStatement pstat0 = con.prepareStatement(sql0);
		pstat0.setInt(1, num);
		ResultSet rs = pstat0.executeQuery();

		String lentState = null;
		int result = 0;
		boolean exist = rs.next();
		if (exist) {
			lentState = rs.getString("lentState");
			if (lentState.equals(true)) {
				return result;// not loanning
			} else {
				String sql = "update from book set lentState='true' where num=?;";
				PreparedStatement pstat = con.prepareStatement(sql);
				pstat.setInt(1, num);
				result = pstat.executeUpdate();
				return result;// success
			}
		} else {
			return result;// no book
		}
	}

	public int lent(int num) throws Exception {
		Connection con = this.getConnection();
		String sql0 = "select * from book where num=?";
		PreparedStatement pstat0 = con.prepareStatement(sql0);
		pstat0.setInt(1, num);
		ResultSet rs = pstat0.executeQuery();
		String lentState = null;
		int result = 0;
		boolean exist = rs.next();
		if (exist) {
			lentState = rs.getString("lentState");
			if (lentState.equals(false)) {
				return result;// loanning
			} else {
				String sql = "update from book set lentState='false' where num=?;";
				PreparedStatement pstat = con.prepareStatement(sql);
				pstat.setInt(1, num);
				result = pstat.executeUpdate();
				return result;// success
			}
		} else {
			return result;// no book
		}
	}

	public int modifyBookData(BookDTO b) throws Exception{
		Connection con = this.getConnection();
		String sql = "update book set "
				+ "name=?,"
				+ "publisher=?,"
				+ "writer=? where=?";
		PreparedStatement stat = con.prepareStatement(sql);
			
		stat.setString(1, b.getName());
		stat.setString(2, b.getPublisher());
		stat.setString(3, b.getWriter());
		stat.setInt(4, b.getNum());
		
		int result = stat.executeUpdate();
		con.commit();
		con.close();
		return result;
	}
	
	public BookDTO getDataByNum(int num) throws Exception{
		Connection con=this.getConnection();
		PreparedStatement pstat=con.prepareStatement("select * from book where id=?");
		pstat.setInt(1, num);

		ResultSet rs=pstat.executeQuery();
		rs.next();

		String name=rs.getString("name");
		String publisher=rs.getString("publisher");
		String writer=rs.getString("writer");
		
		BookDTO dto= new BookDTO();
		
		dto.setName(name);
		dto.setPublisher(publisher);
		dto.setWriter(writer);

		return dto;

	}
}
