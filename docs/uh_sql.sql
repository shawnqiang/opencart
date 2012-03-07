ALTER TABLE oc_product_description ADD COLUMN desc_summary TEXT not null COMMENT 'product summary description';
ALTER TABLE oc_product_description ADD COLUMN desc_function TEXT not null COMMENT 'product functional description';
ALTER TABLE oc_product_description ADD COLUMN desc_style TEXT not null COMMENT 'product style description';
