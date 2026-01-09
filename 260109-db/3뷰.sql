create view vw_scott_table_desc as
   (
      select a.table_name as table_name,
             a.tab_cmt as 테이블설명,
             a.column_name as 컬럼명,
             b.pos as pk,
             a.col_cmt as 컬럼설명,
             a.data_type as 데이터유형,
             a.데이터길이,
             a.nullable as null여부,
             a.column_id as 컬럼순서,
             a.data_default as 기본값
        from (
         select s1.table_name,
                s3.comments as tab_cmt,
                s1.column_name,
                s2.comments as col_cmt,
                s1.data_type,
                case
                   when s1.data_precision is not null then
                      data_precision
                      || ','
                      || data_scale
                   else
                      to_char(s1.data_length)
                end as 데이터길이,
                nullable,
                column_id,
                data_default
           from user_tab_columns s1,
                user_col_comments s2,
                user_tab_comments s3
          where s1.table_name = s2.table_name
            and s1.column_name = s2.column_name
            and s2.table_name = s3.table_name
      ) a,
             (
                select t1.table_name,
                       t2.column_name,
                       'PK' || position as pos
                  from (
                   select table_name,
                          constraint_name
                     from user_constraints
                    where constraint_type = 'P'
                ) t1,
                       (
                          select table_name,
                                 constraint_name,
                                 column_name,
                                 position
                            from user_cons_columns
                       ) t2
                 where t1.table_name = t2.table_name
                   and t1.constraint_name = t2.constraint_name
             ) b
       where a.table_name = b.table_name (+)
         and a.column_name = b.column_name (+)
   );
-- 뷰에서는 오더바이를 사용 못함
-- 복잡한 뷰는 dml이 안먹고, 단순한 단일 뷰는 dml이 먹음