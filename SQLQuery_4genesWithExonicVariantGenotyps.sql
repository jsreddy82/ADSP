USE Younkin

SELECT        dbo.Subject.SubjectIDType, dbo.Subject.SubjectIDValue, dbo.Subject.Series, dbo.Subject.Dx, dbo.Subject.Gend, dbo.Subject.DxAge, dbo.Subject.ApoE, 
                         dbo.Variant.VariantID, dbo.Variant.VariantName, dbo.Variant_New.rs, dbo.Variant_New.chr, dbo.Variant_New.position, dbo.VariantDataAll.Call, 
                         dbo.VariantDataAll.PlateType, dbo.VariantDataAll.BestCall
FROM            dbo.Variant INNER JOIN
                         dbo.VariantDataAll ON dbo.Variant.VariantID = dbo.VariantDataAll.VariantID INNER JOIN
                         dbo.Subject ON dbo.VariantDataAll.SKey = dbo.Subject.SubKey INNER JOIN
                         dbo.Variant_New ON dbo.Variant.VariantID = dbo.Variant_New.VariantID
WHERE        (dbo.Variant.VariantName LIKE '%TLR4%' OR
                         dbo.Variant.VariantName LIKE '%TLR5%' OR
                         dbo.Variant.VariantName LIKE '%SORCS2%' OR
                         dbo.Variant.VariantName LIKE '%ABCA7%')