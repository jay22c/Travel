package com.example.Board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

//    Connection conn = null;
//    PreparedStatement stmt = null;
//    ResultSet rs = null;
//
//    private final String BOARD_INSERT = "insert into BOARD (category, title, writer, content) values (?,?,?,?)";
//    private final String BOARD_UPDATE = "update BOARD set category=?, title=?, writer=?, content=? where seq=?";
//    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
//    private final String BOARD_GET = "select * from BOARD  where seq=?";
//    private final String BOARD_LIST = "select * from BOARD order by seq desc";

    public int insertBoard(BoardVO vo) {
        int count = sqlSession.insert("Board.insertBoard",vo);
       return count;
    }

    // 글 삭제
    public int deleteBoard(int id) {

        int result = sqlSession.delete("Board.deleteBoard",id);
        return result;


    }
    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("Board.updateBoard",vo);
        return result;

    }


    public BoardVO getBoard(int seq) {
        BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
        return one;
    }

    public List<BoardVO> getBoardList(){
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}

//class BoardRowMapper implements RowMapper<BoardVO> {
//    @Override
//    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
//        BoardVO vo = new BoardVO();
//        vo.setSeq(rs.getInt("seq"));
//        vo.setTitle(rs.getString("title"));
//        vo.setContent(rs.getString("content"));
//        vo.setWriter(rs.getString("writer"));
//        vo.setCategory(rs.getString("category"));
//        vo.setRegdate(rs.getDate("regdate"));
//        return vo;
//
//    }
//}
