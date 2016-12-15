--changeset dgradkiewicz:1
create or replace package body departments_pck is
  function upname(name in varchar2) return varchar2 is
  begin
    return upper(name);
  end upname;
end departments_pck;