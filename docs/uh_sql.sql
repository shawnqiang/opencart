ALTER TABLE oc_product_description ADD COLUMN summary_desc TEXT not null COMMENT 'product summary description';
ALTER TABLE oc_product_description ADD COLUMN function_desc TEXT not null COMMENT 'product functional description';
ALTER TABLE oc_product_description ADD COLUMN style_desc TEXT not null COMMENT 'product style description';
