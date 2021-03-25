create or replace package casinocrm.java_procedures is

  function toJson(a_schema          in varchar2,
                  a_table_name      in varchar2,
                  a_action          in varchar2,
                  a_row_id          in varchar2,
                  a_ignored_columns in varchar2) return varchar2;

end java_procedures;
/
create or replace package body casinocrm.java_procedures is

  function toJson(a_schema          in varchar2,
                  a_table_name      in varchar2,
                  a_action          in varchar2,
                  a_row_id          in varchar2,
                  a_ignored_columns in varchar2) return varchar2 is
    language java name 'gr.northdigital.JsonUtilities.toJson(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String) return java.lang.String';

begin
  null;
end java_procedures;
/
