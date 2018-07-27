set serveroutput on 

declare 
    F utl_file.file_type;
    Cursor C is select * from Clients;
  
begin
     F := UTL_FILE.FOPEN ('DBDIR', 'ClientsWrite.CSV', 'W');
     UTL_FILE.PUT(F,'Serial_No'||','||'Name'||','||'Contact_No'||','||'Email'||','||'Address'||','||'Services_provided'||','||'Suggested_By');
     
     utl_file.new_line(F);
     for rec in C
     loop 
        utl_file.put(F,rec.Serial_no||','||rec.Name||','||rec.Contact_no||','||rec.Email||','||rec.address||','||rec.services_provided||','||rec.suggested_by);
        utl_file.new_line(F);
    end loop;
    utl_file.fclose(F);
end;