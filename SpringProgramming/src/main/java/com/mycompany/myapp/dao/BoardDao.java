package com.mycompany.myapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.mycompany.myapp.dto.Board;

@Component
public class BoardDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public Integer insert(Board board) {
		Integer pk = null;
		String sql = "insert into boards (board_title, board_content, board_writer, board_date, board_original_file_name, board_filesystem_name, board_content_type) values(?, ?, ?, now(), ?, ?, ?)";
		
		KeyHolder keyHolder = new GeneratedKeyHolder(); //pk값을 가진 객체를 만들것이다...
		jdbcTemplate.update(new PreparedStatementCreator () { //update메소드를 실행 할 때 Keyholder를 두번째 매개값으로 줄 것이다.
			@Override
			public PreparedStatement createPreparedStatement(Connection conn) throws SQLException {
				PreparedStatement pstmt = conn.prepareStatement(sql, new String[] {"board_no"}); //어떤 컬럼이 자동증분되는 pk값인지 알려주기 위해..!!(jdbc참고)
				pstmt.setString(1, board.getTitle());
				pstmt.setString(2, board.getContent());
				pstmt.setString(3, board.getWriter());
				pstmt.setString(4, board.getOriginalFileName());
				pstmt.setString(5, board.getFilesystemName());
				pstmt.setString(6, board.getContentType());
				return pstmt;
				}	
			}, keyHolder); //익명개체
		Number keyNumber = keyHolder.getKey();
		pk = keyNumber.intValue();
		return pk;
	}
	
	public List<Board> selectByPage(int pageNo, int rowsPerPage)  {
	
		String sql = "";
		sql += "select board_no, board_title, board_writer, board_date, board_hitcount " ;
		sql += "from boards ";
		sql += "order by board_no desc ";
		sql += "limit ?,?";

		List<Board> list = jdbcTemplate.query(
				sql,
				new Object[] {(pageNo-1)*rowsPerPage, rowsPerPage}, //sql의 ?에 들어갈 매개값...
				new RowMapper<Board>() {   //행을 가져와서 dto에 어떻게 저장을 할 것인가?
					@Override
					public Board mapRow(ResultSet rs, int rowNum) throws SQLException{
						Board board = new Board();
						board.setNo(rs.getInt("board_no"));
						board.setTitle(rs.getString("board_title"));
						board.setDate(rs.getDate("board_date"));
						board.setWriter(rs.getString("board_writer"));
						board.setHitcount(rs.getInt("board_hitcount"));
						return board;
					}
				} //여기까지 익명객체? 인터페이스를 구현하는...?? 
			);
		return list;
	}
	
	public Board selectByPk(int boardNo) {
		String sql = "select * from boards where board_no=?";
		Board board = jdbcTemplate.queryForObject(//객체 하나를 얻기 위한 쿼리
				sql,
				new Object[] {boardNo},
				new RowMapper<Board>() {

					@Override
					public Board mapRow(ResultSet rs, int rowNum)throws SQLException {
						Board board = new Board();
						board.setNo(rs.getInt("board_no"));
						board.setTitle(rs.getString("board_title"));
						board.setContent(rs.getString("board_content"));
						board.setDate(rs.getDate("board_date"));
						board.setWriter(rs.getString("board_writer"));
						board.setHitcount(rs.getInt("board_hitcount"));  
						board.setOriginalFileName(rs.getString("board_original_file_name"));
						board.setFilesystemName(rs.getString("board_filesystem_name"));
						board.setContentType(rs.getString("board_content_type"));
						return board;
					} 
				}
			);
		return board;
	}
	
	public int update(Board board) {
		String sql = "update boards set board_title=?, board_content=? where board_no=?";
		int rows = jdbcTemplate.update(
				sql,
				board.getTitle(),
				board.getContent(),
				board.getNo()
		);
		return rows;
	}
	
	
	public int delete(long boardNo) {
		String sql = "delete from boards where board_no=?";
		int rows = jdbcTemplate.update(
				sql,
				boardNo				
		);
		return rows;
	}
	
	public int updateHitcount(long boardNo) {
		String sql = "update boards set board_hitcount=board_hitcount+1 where board_no=?";
		int rows = jdbcTemplate.update(sql, boardNo);
		return rows;
	}	
	
	public int selectCount()  {
		String sql = "select count(*) from boards";
		int rows = jdbcTemplate.queryForObject(sql, Integer.class); //object는 자동타입변환 언박싱..
		return rows;
	}
}



