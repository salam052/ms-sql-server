/*******************************************************************************
********************** Plusieurs requetes dans le CTE    ***********************
********************************************************************************/

with CTE 
--(NOM_EMPLOYE,AGE_EMPLOYE, DEPARTEMENT_ID, SALAIRE_EMPLOYE )
as
(
 SELECT 
 NOM_EMPLOYE   , 
 AGE_EMPLOYE    , 
 DEPARTEMENT_ID, 
 SALAIRE_EMPLOYE 
            FROM dbo.TB_EMPLOYES TD
		      INNER JOIN dbo.TB_DEPARTEMENTS D ON TD.DEPARTEMENT_ID = D.ID_DEPARTEMENT
          WHERE AGE_EMPLOYE BETWEEN 20 AND 40 

UNION aLL

SELECT 
 NOM_EMPLOYE   , 
 AGE_EMPLOYE    , 
 DEPARTEMENT_ID, 
 SALAIRE_EMPLOYE 
            FROM dbo.TB_EMPLOYES TD
		      INNER JOIN dbo.TB_DEPARTEMENTS D ON TD.DEPARTEMENT_ID = D.ID_DEPARTEMENT
          WHERE AGE_EMPLOYE BETWEEN 20 AND 40 


)

select NOM_EMPLOYE   , AGE_EMPLOYE 
from CTE
 WHERE SALAIRE_EMPLOYE > 2000

 -- Pour les query multiple au sein du CTE on peut mettre  UNION ALL, UNION, INTERSECT, EXCEPT