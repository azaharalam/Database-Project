set serveroutput on

declare
    F utl_file.file_type;
    V_LINE varchar(1000);
    serial_no  SERVICES.SERIAL_NO%type;
    B_date SERVICES.BOOKING_DATE%type;
    S_Date SERVICES.SERVICE_DATE%type;
    client_ID SERVICES.CLIENT_ID%type;
    people SERVICES.PEOPLE%type;
    community_Center SERVICES.COMMUNITY_CENTER%type;
    rate SERVICES.RATE%type;
    typ SERVICES.TYPE%type;
    advance SERVICES.ADVANCE%type;

    --serial_no  Clients.SERIAL_NO%type;
    Nam CLIENTS.NAME%type;
    Cont CLIENTS.CONTACT_NO%type;
    Eml CLIENTS.EMAIL%type;
    addr CLIENTS.ADDRESS%type;
    cnt CLIENTS.SERVICES_PROVIDED%type;
    sugg CLIENTS.SUGGESTED_BY%type;
    
begin 

    F := UTL_FILE.FOPEN ('DBDIR', 'Clients.CSV', 'R');
      IF UTL_FILE.IS_OPEN(F) THEN
        UTL_FILE.GET_LINE(F, V_LINE, 1000);
        loop
            Begin
            UTL_FILE.GET_LINE(F, V_LINE, 1000);
            IF V_LINE IS NULL THEN
                EXIT;
            End if;
            
            
            serial_no := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 1);
            nam := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 2);
            cont := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 3);
            Eml := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 4);
            addr := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 5);
            cnt := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 6);
            sugg := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 7);
            
            
            insert into Clients values (Serial_No,nam,cont,eml,addr,cnt,sugg);
            commit;
      
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN EXIT;
            END;
      
        end loop;
        
      end if;
      
      UTL_FILE.FCLOSE(F);


     F := UTL_FILE.FOPEN ('DBDIR', 'Services.CSV', 'R');
      IF UTL_FILE.IS_OPEN(F) THEN
        UTL_FILE.GET_LINE(F, V_LINE, 1000);
        loop
            Begin
            UTL_FILE.GET_LINE(F, V_LINE, 1000);
            IF V_LINE IS NULL THEN
                EXIT;
            End if;
            
            
            serial_no := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 1);
            B_date := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 2);
            S_Date := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 3);
            client_ID := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 4);
            people := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 5);
            community_center := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 6);
            typ := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 7);
            rate := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 8);
            advance := REGEXP_SUBSTR(V_LINE, '[^,]+', 1, 9);
            
            insert into Services(Serial_No,Booking_Date,Service_Date,Client_Id,people,Community_Center,Type,Rate,Advance) values(serial_no,B_date,S_Date,client_ID,people,community_center,typ,rate,advance);
            commit;
      
            EXCEPTION 
                WHEN NO_DATA_FOUND THEN EXIT;
            END;
      
        end loop;
        
      end if;
      
      UTL_FILE.FCLOSE(F);



      
    
end;
