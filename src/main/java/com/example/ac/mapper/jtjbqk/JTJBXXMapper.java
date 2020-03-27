package com.example.ac.mapper.jtjbqk;

import com.example.ac.entity.JtjbxxDO;
import com.example.ac.entity.holder.JbxxHzHolder;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 家庭基本信息mapper
 */
@Mapper
public interface JTJBXXMapper {

    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    @Insert("INSERT INTO ym_jtjbqk_jtjbxx(shi,xian,zhen,xzc,zrct,lxdh,khyh,yhkh,pkhsx,jhtpnd,fpnd,fpyy,sfjls,sfbqh,bqfs,bqdz,lrrq,xgrq,lrrdm,zpzy1,zpzy2,zpzy3,ncjtrks,nmjtrks,scbz) VALUES " +
            "(#{shi},#{xian},#{zhen},#{xzc},#{zrct},#{lxdh},#{khyh},#{yhkh},#{pkhsx},#{jhtpnd},#{fpnd},#{fpyy},#{sfjls},#{sfbqh},#{bqfs},#{bqdz},#{lrrq},#{xgrq},#{lrrdm},#{zpzy1},#{zpzy2},#{zpzy3},#{ncjtrks},#{nmjtrks},#{scbz})"
    )
    int add(JtjbxxDO jtjbxxDO);

    @Update({"UPDATE ym_jtjbqk_jtjbxx SET scbz = 1 WHERE id = #{id};" +
            "UPDATE ym_jtjbqk_jtcy SET scbz = 1 WHERE fid = #{id};" +
            "UPDATE ym_jtjbqk_jtjbxx SET scbz = 1 WHERE fid = #{id};" +
            "UPDATE ym_jtjbqk_bgqksm SET scbz = 1 WHERE fid = #{id};"
    })
    int delete(Integer id);

    @Update({"UPDATE ym_jtjbqk_jtjbxx SET scbz = 1 WHERE id = #{id};" +
            "UPDATE ym_jtjbqk_jtcy SET scbz = 1 WHERE fid IN (${inStr};" +
            "UPDATE ym_jtjbqk_jtjbxx SET scbz = 1 WHERE fid IN (${inStr};" +
            "UPDATE ym_jtjbqk_bgqksm SET scbz = 1 WHERE fid IN (${inStr};"
    })
    int delAll(@RequestParam(name = "inStr") String inStr);


    @Update("UPDATE ym_jtjbqk_jtjbxx set shi=#{shi},xian=#{xian},zhen=#{zhen},xzc=#{xzc},zrct=#{zrct},lxdh=#{lxdh},khyh=#{khyh},yhkh=#{yhkh},pkhsx=#{pkhsx},jhtpnd=#{jhtpnd},fpnd=#{fpnd},fpyy=#{fpyy},sfjls=#{sfjls},sfbqh=#{sfbqh},bqfs=#{bqfs},bqdz=#{bqdz},lrrq=#{lrrq},xgrq=#{xgrq},lrrdm=#{lrrdm},zpzy1=#{zpzy1},zpzy2=#{zpzy2},zpzy3=#{zpzy3},ncjtrks=#{ncjtrks},nmjtrks=#{nmjtrks},scbz=#{scbz} WHERE id=#{id}")
    int update(JtjbxxDO jtjbxxDO);

    @Select("select id,shi,xian,zhen,xzc,zrct,lxdh,khyh,yhkh,pkhsx,jhtpnd,fpnd,fpyy,sfjls,sfbqh,bqfs,bqdz,lrrq,xgrq,lrrdm,zpzy1,zpzy2,zpzy3,ncjtrks,nmjtrks,scbz FROM ym_jtjbqk_jtjbxx WHERE id = #{id}")
    JtjbxxDO get(int id);

    @Select("SELECT a.id, a.fpnd, a.sfbqh, a.pkhsx, a.`jhtpnd`, b.xm AS hzxm, b.`zjhm`" +
            "FROM ym_jtjbqk_jtjbxx a LEFT JOIN ym_jtjbqk_jtcy b ON a.id = b.`fid` AND b.yhzgx = 1")
    List<JbxxHzHolder> list();
}

