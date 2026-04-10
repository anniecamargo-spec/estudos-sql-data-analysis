SQL
-- Projeto: Análise de População por Estado
-- Objetivo: Somar a população residente unindo tabelas de cadastro e status

SELECT 
    Municipios_Brasileiros.Estado, 
    SUM(Municipios_Status.populacao_residente) AS populacao_total 
FROM 
    Municipios_Brasileiros 
INNER JOIN 
    Municipios_Status 
ON 
    Municipios_Brasileiros.Municipio_ID = Municipios_Status.municipio_ID 
GROUP BY 
    Municipios_Brasileiros.Estado 
ORDER BY 
    populacao_total ASC;