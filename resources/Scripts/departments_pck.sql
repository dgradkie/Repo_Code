--changeset dgradkiewicz:1
create or replace package departments_pck as

  function  upname(name in varchar2) return varchar2;

end;