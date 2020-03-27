package com.example.ac.mapper.jtjbqk;

import com.example.ac.entity.ZpyyDO;
import org.apache.ibatis.annotations.*;

@Mapper
public interface ZPYYMapper {

    @Options(useGeneratedKeys = true, keyProperty = "id", keyColumn = "id")
    @Insert("INSERT INTO ym_jtjbqk_zpyy(fid,zpyy1,zpyy2,zpyy3,ncjtrks,nmjtrks) VALUES (#{fid},#{zpyy1},#{zpyy2},#{zpyy3},#{ncjtrks},#{nmjtrks})")
    int add(ZpyyDO zpyyDO);

    @Update("UPDATE ym_jtjbqk_zpyy SET fid=#{fid},zpyy1=#{zpyy1},zpyy2=#{zpyy2},zpyy3=#{zpyy3},ncjtrks=#{ncjtrks},nmjtrks=#{nmjtrks} WHERE id = #{id}")
    int update(ZpyyDO zpyyDO);

    @Select("SELECT fid,zpyy1,zpyy2,zpyy3,ncjtrks,nmjtrks FROM ym_jtjbqk_zpyy WHERE id = #{id}")
    ZpyyDO get(int id);
}




