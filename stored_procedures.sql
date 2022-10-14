--Cuando se instala en linux, windows ya viene ejecutado por defecto
create language plpgsql;
-- Copiar datos de una tabla en un archivo csv
create function guardar() returns boolean AS
$$
begin
	copy(select * from "Daily02.user_client")
	to
	'/mnt/user_client.csv'
	with csv;
	return true;
end
$$ language plpgsql;

--Resultado o salida de la ejecucion del script
Updated Rows	0
Query	create function guardar() returns boolean AS
	$$
	begin
	    copy(select * from "Daily02.user_client")
	    to
	    '/mnt/user_client.csv'
	    with csv;
	    return true;
	end
	$$ language plpgsql
Finish time	Thu Oct 13 23:09:27 ECT 2022


