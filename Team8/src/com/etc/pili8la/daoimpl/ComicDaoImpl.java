package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.ComicDao;
import com.etc.pili8la.dao.TypeDao;
import com.etc.pili8la.entity.Comic;
import com.etc.pili8la.entity.MyType;
import com.etc.pili8la.util.JDBCUtil;

import oracle.jdbc.OracleTypes;

public class ComicDaoImpl implements ComicDao{
	JDBCUtil util=new JDBCUtil();
	/**
	 * 查询漫画的方法
	 * @param 传入漫画id
	 * @return 根据类型查询的漫画
	 */
		public List<Comic> querycomicbytype(int i) {
			ResultSet rs=util.query("select * from p_comic where comic_type=?", i);
			List<Comic> list=new ArrayList<Comic>();
			Comic comic=null;
			try {
				while(rs.next()){
					comic=new Comic();
					comic.setComic_id(rs.getInt("comic_id"));
					comic.setComic_author(rs.getString("comic_author"));
					comic.setComic_cover(rs.getString("comic_cover"));
					comic.setComic_link(rs.getString("comic_link"));
					comic.setComic_title(rs.getString("comic_title"));
					TypeDao dao=new TypeDaoImpl();
					
					comic.setComic_type(i);
					list.add(comic);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				util.closeAll();
			}
			return list;
		}

		/**
		 * 判断是否上传漫画成功的方法
		 * @param 传入的参数 要插入的漫画的对象
		 * @return 成功返回true 失败返回false
		 */
		public boolean uploadcomic(Comic comic) {
			
			if(util.cas_notreturn_porc("proc_uploadcomic(?,?,?,?,?)",comic.getComic_cover(),comic.getComic_title(),comic.getComic_author(),comic.getComic_type(),comic.getComic_link())){
				return true;            
			}
			return false;
		}

		/**
		 * 查询所有漫画的方法
		 * @param 无参数
		 * @return 返回查询的漫画的集合
		 */
		public List<Comic> queryAllComic() {
			List<Comic> list = new ArrayList<Comic>();
			List<Integer> list1 = new ArrayList<Integer>();
			list1.add(OracleTypes.CURSOR);
			Object[] obj = util.cas_hasreturn_porc("proc_queryallcomic(?)", list1);
			ResultSet rs = (ResultSet) obj[0];
			try {
				while(rs.next()){
					Comic comic = new Comic();
					comic.setComic_id(rs.getInt("comic_id"));
					comic.setComic_cover(rs.getString("comic_cover"));
					comic.setComic_title(rs.getString("comic_title"));
					comic.setComic_author(rs.getString("comic_author"));
					comic.setComic_type(rs.getInt("comic_type"));
					comic.setComic_link(rs.getString("comic_link"));
					list.add(comic);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return list;
		}

		/**
		 * 根据id删除一个漫画的方法
		 * @param 传入要删除的漫画的id
		 * @return 删除成功返回true 删除失败返回false
		 */
		public boolean deleteComicById(int comicid) {
			if(util.cas_notreturn_porc("proc_deletecomicbyid(?)", comicid)){
				return true;
			}
			return false;
		}

		/**
		 * 根据id更新更改漫画的方法
		 */
		public boolean updateComic(Comic comic) {
			int i = 0;
			i = util.update("update p_comic set comic_cover = comic_cover,comic_title = ?,comic_author = ?,comic_type = ?,comic_link = ? where comic_id = ?", comic.getComic_title(),comic.getComic_author(),comic.getComic_type(),comic.getComic_link(),comic.getComic_id());
			if(i>0){
				return true;
			}
			return false;
		}

		/**
		 * 根据id查询漫画的方法
		 * @param 传入参数要查询的漫画的id
		 * @return 返回查询到的漫画的对象
		 */
		public Comic queryComicByid(int id) {
			Comic comic = new Comic();
			ResultSet rs = util.query("select * from p_comic where  comic_id=?", id);
			try {
				if(rs.next()){
					comic.setComic_id(rs.getInt("comic_id"));
					comic.setComic_cover(rs.getString("comic_cover"));
					comic.setComic_title(rs.getString("comic_title"));
					comic.setComic_author(rs.getString("comic_author"));
					comic.setComic_type(rs.getInt("comic_type"));
					comic.setComic_link(rs.getString("comic_link"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return comic;
		}

		/**
		 * 创建漫画的方法
		 * @param 传入要创建的漫画的对象
		 * @return 返回true or  false
		 */
		public boolean createComic(Comic comic) {
			int i = 0;
			i = util.update("insert into p_comic (comic_title,comic_type,comic_cover,comic_author)values(?,?,?,?)",comic.getComic_title(),comic.getComic_type(),comic.getComic_cover(),comic.getComic_author());
			if(i>0){
				return true;
			}
			return false;
		}

		/**
		 * 给漫画添加地址的方法根据标
		 * @param 传入的漫画的地址和标题
		 * @return 返回是否成功
		 */
		public boolean insertComicByTitle(String comiclink,String title) {
			int i= 0;
			i = util.update("update p_comic set comic_link = ? where comic_title = ?", comiclink,title);
			
			if(i>0){
				return true;
			}else{
				System.out.println("sql语句写错 了");
				return false;
			}
		}
		/**
		 * 根据rownum查询漫画的方法
		 * @param 传入参数要查询的漫画的rownum
		 * @return 返回查询到的漫画的对象
		 */
		@Override
		public Comic queryComicByrownum(int num) {
			Comic comic = new Comic();
			ResultSet rs = util.query("select *from(select t.*,rownum rm from(select *from p_comic)t) where rm =?", num);
			try {
				if(rs.next()){
					comic.setComic_id(rs.getInt("comic_id"));
					comic.setComic_cover(rs.getString("comic_cover"));
					comic.setComic_title(rs.getString("comic_title"));
					comic.setComic_author(rs.getString("comic_author"));
					comic.setComic_type(rs.getInt("comic_type"));
					comic.setComic_link(rs.getString("comic_link"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return comic;
		}

	
}
