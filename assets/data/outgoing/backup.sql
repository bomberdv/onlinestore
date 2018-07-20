INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('145IHAQYOAYWSAO', 'test testsfsa', 'test', 'testsfsa', 'sdfsa,Mayaguana,Bahamas The,4532', 'safasdf', '', 'sdfsa', 'Mayaguana', '16', '4532', '', '34534', 'aBNN@gmail.com');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `receipt_no`, `date`, `amount`, `payment_type`, `description`, `status`) VALUES ('9WBF4K4RSYCHBQM', '3IBLLESQFSIWB5Y', 'I19I3HLM1GWQXMK', 'W4WAW66YSWIWEDL', '03-20-2018', '100', 1, 'ITP', 1);
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `date`, `amount`, `status`) VALUES ('V4YIZQOU2MZM8MT', '3IBLLESQFSIWB5Y', 'I19I3HLM1GWQXMK', '03-20-2018', '324.00', 1);
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `user_id`, `store_id`, `paid_amount`, `due_amount`, `service_charge`, `invoice_details`, `status`) VALUES ('I19I3HLM1GWQXMK', '3IBLLESQFSIWB5Y', '03-20-2018', '324.00', 1033, '1500.00', 1500, '1', 'M79OO9D7VZI3ALI', '100', '224.00', '', '', 1);
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('KA5RPFXOLCC2E9A', 'I19I3HLM1GWQXMK', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '3', '600', '200', '1800', '500', 1);
INSERT INTO `tax_collection_summary` (`tax_collection_id`, `invoice_id`, `tax_amount`, `tax_id`, `date`) VALUES ('VMX1KHJG5GUW3P1', 'I19I3HLM1GWQXMK', '12', 'H5MQN4NXJBSDX4L', '03-20-2018');
INSERT INTO `tax_collection_summary` (`tax_collection_id`, `invoice_id`, `tax_amount`, `tax_id`, `date`) VALUES ('HI82TB2UZJHHIJ1', 'I19I3HLM1GWQXMK', '12', '5SN9PRWPN131T4V', '03-20-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('5O5LF7PQDA3DNOL', 'I19I3HLM1GWQXMK', '12', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('JUY7GSEG21A18I7', 'I19I3HLM1GWQXMK', '12', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('MBP9J4K1FZNNHUR', '3IBLLESQFSIWB5Y', '03-20-2018', '108.00', 1037, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '55', '53.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('NHWJ5L4VQLR7KMQ', 'MBP9J4K1FZNNHUR', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('I5IDCNEHKKZEP3J', 'MBP9J4K1FZNNHUR', '4', 'H5MQN4NXJBSDX4L', '03-20-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('6MFH9SUD47FHG7O', 'MBP9J4K1FZNNHUR', '4', '5SN9PRWPN131T4V', '03-20-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('WHLKAXSJN2LKLIC', 'MBP9J4K1FZNNHUR', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('CJ5AKA6ZAVX3E92', 'MBP9J4K1FZNNHUR', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.1/my-assets/pdf/MBP9J4K1FZNNHUR.pdf'
WHERE `order_id` = 'MBP9J4K1FZNNHUR';
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_mobile`, `customer_email`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `status`) VALUES ('OQ7EDBPQAXAZWM4', 'David', '23542', 'al-amin@gmail.com', '', '', '', '', '', '', '', 1);
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('Z85W3PFW3B4VDHB', 'OQ7EDBPQAXAZWM4', '03-20-2018', '108.00', 1038, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '44', '64.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('WQ9LVL14VRSDNK2', 'Z85W3PFW3B4VDHB', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('JGVP6ZYBDHSRQMN', 'Z85W3PFW3B4VDHB', '4', 'H5MQN4NXJBSDX4L', '03-20-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('I2RM33LX9SPWV4Q', 'Z85W3PFW3B4VDHB', '4', '5SN9PRWPN131T4V', '03-20-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('B9ISC8YFQ6YRPWH', 'Z85W3PFW3B4VDHB', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('B5V9CLTJ6FZI9OG', 'Z85W3PFW3B4VDHB', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-20-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.1/my-assets/pdf/Z85W3PFW3B4VDHB.pdf'
WHERE `order_id` = 'Z85W3PFW3B4VDHB';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('LBX33PIOLFB6YHY', 'Customer  test', 'Customer ', 'test', 'sadfasfsa,Priaraks,Azerbaijan,3534', 'safasfas', '', 'sadfasfsa', 'Priaraks', '15', '3534', '', '5345344', 'a@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('AIGDHHUHAIRX13F', 'LBX33PIOLFB6YHY', 'M79OO9D7VZI3ALI', '03-26-2018', 216, 1043, 1000, 1000, 216, '0', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('YL5DAB6O5Z4Y71H', '9', 'AIGDHHUHAIRX13F', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('BQ98CFYS4I379PT', '1', 'AIGDHHUHAIRX13F', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('VU89RFRIF6LHQNE', 'AIGDHHUHAIRX13F', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('K7WFKSLCVZSF9Q4', 'AIGDHHUHAIRX13F', 4, 'H5MQN4NXJBSDX4L', '03-26-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('C4ILC9BT52J1XD8', 'AIGDHHUHAIRX13F', 4, '5SN9PRWPN131T4V', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('6CVP2QCMPPDZJA6', 'AIGDHHUHAIRX13F', 4, '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('LL3GRA8FDL9UQZA', 'AIGDHHUHAIRX13F', 4, '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-26-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('W97UT9FNXQUSNDQ', 'AIGDHHUHAIRX13F', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+4
WHERE `order_id` = 'AIGDHHUHAIRX13F'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+4
WHERE `order_id` = 'AIGDHHUHAIRX13F'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('FB3U92KXLJTYHYV', 'AIGDHHUHAIRX13F', 4, '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('VJ3T3V2QNZMUY43', 'AIGDHHUHAIRX13F', 4, '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-26-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.2/my-assets/pdf/AIGDHHUHAIRX13F.pdf'
WHERE `order_id` = 'AIGDHHUHAIRX13F';
DELETE FROM `order`
WHERE `order_id` = 'AIGDHHUHAIRX13F';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `paid_amount`, `due_amount`, `status`) VALUES ('AIGDHHUHAIRX13F', 'LBX33PIOLFB6YHY', '03-26-2018', '216', '1043', '1000', 1000, '0', '1', 'M79OO9D7VZI3ALI', '0', '216', '1');
DELETE FROM `order_details`
WHERE `order_id` = 'AIGDHHUHAIRX13F';
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `quantity`, `rate`, `store_id`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('DF54JBHFOQICNOU', 'AIGDHHUHAIRX13F', '67296524', 'S3I7DXQ4XZ2CJV6', '1', '600', 'M79OO9D7VZI3ALI', '200', '600', '500', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `quantity`, `rate`, `store_id`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('JPLI9RF677MWLRA', 'AIGDHHUHAIRX13F', '67296524', '7LKAJ3R5QHJXLRG', '1', '600', 'M79OO9D7VZI3ALI', '200', '600', '500', 1);
DELETE FROM `order_tax_col_summary`
WHERE `order_id` = 'AIGDHHUHAIRX13F';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('B6TQG5CZY7JJWL9', 'AIGDHHUHAIRX13F', '4', 'H5MQN4NXJBSDX4L', '03-26-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+4
WHERE `order_id` = 'AIGDHHUHAIRX13F'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('GVSB7TZZ7U3Y2CC', 'AIGDHHUHAIRX13F', '4', '5SN9PRWPN131T4V', '03-26-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+4
WHERE `order_id` = 'AIGDHHUHAIRX13F'
AND `tax_id` = '5SN9PRWPN131T4V';
DELETE FROM `order_tax_col_details`
WHERE `order_id` = 'AIGDHHUHAIRX13F';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('WGSATM8KNXNGZAM', 'AIGDHHUHAIRX13F', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('QB6DKGJDPPVQDY5', 'AIGDHHUHAIRX13F', '4', '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('Y99YL2LS6XDI1GN', 'AIGDHHUHAIRX13F', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-26-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('EYIZ5ELJY4OTKH9', 'AIGDHHUHAIRX13F', '4', '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-26-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.2/my-assets/pdf/AIGDHHUHAIRX13F.pdf'
WHERE `order_id` = 'AIGDHHUHAIRX13F';
INSERT INTO `language` (`phrase`) VALUES ('default_status_already_exists');
INSERT INTO `language` (`phrase`) VALUES ('store_name_already_exists');
UPDATE `language` SET `english` = 'Store name already exists !'
WHERE `id` = '882';
UPDATE `language` SET `english` = 'Store name already exists !'
WHERE `id` = '882';
UPDATE `language` SET `english` = 'Default status already exists !'
WHERE `id` = '881';
UPDATE `language` SET `english` = 'Default store already exists !'
WHERE `id` = '881';
UPDATE `language` SET `english` = 'Default status already exists !'
WHERE `id` = '881';
INSERT INTO `store_set` (`store_id`, `store_name`, `store_address`, `default_status`) VALUES ('Q416989GT8WSOAT', 'sdfsd', '42342', '0');
UPDATE `store_set` SET `store_name` = 'Default Store', `store_address` = 'Test1 Address'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
UPDATE `store_set` SET `default_status` = '0'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
UPDATE `store_set` SET `default_status` = '1'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
UPDATE `store_set` SET `default_status` = '0'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
INSERT INTO `language` (`phrase`) VALUES ('please_set_default_store');
UPDATE `language` SET `english` = 'Please set default store !'
WHERE `id` = '883';
UPDATE `store_set` SET `default_status` = '0'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
UPDATE `store_set` SET `default_status` = '1'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
INSERT INTO `language` (`phrase`) VALUES ('do_you_want_make_it_default_store');
UPDATE `language` SET `english` = 'Do you want make it default store ?'
WHERE `id` = '884';
UPDATE `currency_info` SET `currency_name` = 'USD', `currency_icon` = '$', `currency_position` = '0', `convertion_rate` = '1', `default_status` = '0'
WHERE `currency_id` = 'ZFUXHWW83EM6QGP';
INSERT INTO `language` (`phrase`) VALUES ('do_you_want_make_it_default_currency');
UPDATE `language` SET `english` = 'Do you want it default currency ?'
WHERE `id` = '885';
INSERT INTO `language` (`phrase`) VALUES ('you_must_have_a_default_currency');
UPDATE `language` SET `english` = 'You must have a default currency'
WHERE `id` = '886';
UPDATE `currency_info` SET `currency_name` = 'USD', `currency_icon` = '$', `currency_position` = '0', `convertion_rate` = '1', `default_status` = '1'
WHERE `currency_id` = 'ZFUXHWW83EM6QGP';
INSERT INTO `currency_info` (`currency_id`, `currency_name`, `currency_icon`, `currency_position`, `convertion_rate`, `default_status`) VALUES ('9GT8WSOAT5A5HYQ', 'demo', '34', '0', '23', '0');
DELETE FROM `currency_info`
WHERE `currency_id` = '9GT8WSOAT5A5HYQ';
INSERT INTO `language` (`phrase`) VALUES ('you_cant_delete_this_is_default_currency');
UPDATE `language` SET `english` = 'You cant delete ! This is default curreny. '
WHERE `id` = '887';
UPDATE `language` SET `english` = 'You cant delete ! This is default currency. '
WHERE `id` = '887';
UPDATE `currency_info` SET `currency_name` = 'BDT', `currency_icon` = '৳', `currency_position` = '0', `convertion_rate` = '83.19', `default_status` = '0'
WHERE `currency_id` = '8UD4F1XGKHV7UDX';
UPDATE `store_set` SET `default_status` = '0'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
UPDATE `bank_add` SET `default_status` = '0'
WHERE `bank_id` = '1SEGVFU1VP';
UPDATE `store_set` SET `default_status` = '1'
WHERE `store_id` = 'M79OO9D7VZI3ALI';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('145IHAQYOAYWSAO', 'test sadfsa', 'test', 'sadfsa', 'sdafsa,Lezhe,Albania,5432', 'sdfsa', 'dfs', 'sdafsa', 'Lezhe', '2', '5432', 'sfs', '534', 'aBNN@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('1L7ONJC765DTESP', '145IHAQYOAYWSAO', 'M79OO9D7VZI3ALI', '03-31-2018', 158, 1044, 500, 500, 158, '50', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('UIAEL8ZVCRR2LTX', '1', '1L7ONJC765DTESP', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('GHQC2L3BB24Q7EK', '1', '1L7ONJC765DTESP', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('W6QMP7P4HRD61UA', '1L7ONJC765DTESP', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('HQVLBGSWEH69WOW', '1L7ONJC765DTESP', 4, 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('ANFH2PIT7TBJREO', '1L7ONJC765DTESP', 4, '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('1HJJAOQLOF2JJ8J', '1L7ONJC765DTESP', 4, '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('JPZUBI8Y5SWLOWH', '1L7ONJC765DTESP', 4, '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.2/my-assets/pdf/1L7ONJC765DTESP.pdf'
WHERE `order_id` = '1L7ONJC765DTESP';
INSERT INTO `language` (`phrase`) VALUES ('you_must_have_a_default_store');
UPDATE `language` SET `english` = 'You must have a default sote'
WHERE `id` = '888';
UPDATE `bank_add` SET `bank_name` = 'ISLAMI BANK BANGLADESH LTD', `ac_name` = 'tst', `branch` = 'tst', `ac_number` = 'tst'
WHERE `bank_id` = '1RR9SN6DYJ';
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'ssl://smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'asfdasd'
WHERE `email_id` = 1;
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'ssl://smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'asfdasd'
WHERE `email_id` = 1;
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'ssl://smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'asfdasd'
WHERE `email_id` = 1;
UPDATE `web_setting` SET `logo` = 'http://localhost/style_dunia/v1.3/my-assets/image/logo/ca072741677a1741e1f9fbf625c8cb9a.png', `invoice_logo` = 'http://localhost/style_dunia/my-assets/image/logo/e32f1efb85f19623b8dc545bdfa0aaac.png', `favicon` = 'http://localhost/style_dunia/my-assets/image/logo/3db8219895f46bb340dd9a2edc8c58ca.png', `footer_logo` = NULL, `footer_text` = 'This is footer ', `map_api_key` = 'AIzaSyBGwh3ShY_W1hMms1wmwlHK3hpInhExn3o', `map_latitude` = '23.756107', `map_langitude` = '90.387196'
WHERE `setting_id` = '1';
INSERT INTO `customer_information` (`customer_id`, `first_name`, `last_name`, `customer_name`, `customer_email`, `image`, `password`, `status`) VALUES ('WZVJYIAHDQ52MER', 'test', 'teteeetr', 'test teteeetr', 'testy@gmail.com', 'http://localhost/style_dunia/v1.3/assets/dist/img/user.png', '41d99b369894eb1ec3f461135132d8bb', 1);
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('YSWIWEDLV4YIZQO', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1045, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('U2MZM8MTKA5RPFX', 'YSWIWEDLV4YIZQO', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('OLCC2E9AVMX1KHJ', 'YSWIWEDLV4YIZQO', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('EB3FKA2NHI82TB2', 'YSWIWEDLV4YIZQO', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('UZJHHIJ15O5LF7P', 'YSWIWEDLV4YIZQO', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('YEJBZOV2JUY7GSE', 'YSWIWEDLV4YIZQO', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/YSWIWEDLV4YIZQO.pdf'
WHERE `order_id` = 'YSWIWEDLV4YIZQO';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('G21A18I7MBP9J4K', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1046, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1FZNNHURNHWJ5L4', 'G21A18I7MBP9J4K', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('VQLR7KMQI5IDCNE', 'G21A18I7MBP9J4K', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('T6RHLT876MFH9SU', 'G21A18I7MBP9J4K', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('D47FHG7OWHLKAXS', 'G21A18I7MBP9J4K', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('N8HPB6RRCJ5AKA6', 'G21A18I7MBP9J4K', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/G21A18I7MBP9J4K.pdf'
WHERE `order_id` = 'G21A18I7MBP9J4K';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('ZAVX3E9297WNRKV', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1047, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('9CSHY6SSGYTAPYT', 'ZAVX3E9297WNRKV', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('TFW62NYKSWWFLEW', 'ZAVX3E9297WNRKV', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('JLC2PF5OR485F14', 'ZAVX3E9297WNRKV', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('KWYRIXBN3QWMWZ3', 'ZAVX3E9297WNRKV', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ZJ3RQ1P2NHPUITO', 'ZAVX3E9297WNRKV', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/ZAVX3E9297WNRKV.pdf'
WHERE `order_id` = 'ZAVX3E9297WNRKV';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('UQPQA5TGW2TWXCP', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1048, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('Q3CUZJT6A1B9PSI', 'UQPQA5TGW2TWXCP', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('1VJRWUHYY8CFL4C', 'UQPQA5TGW2TWXCP', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('NVZE461AJ6WCM76', 'UQPQA5TGW2TWXCP', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('MN2PU851WMA4KNU', 'UQPQA5TGW2TWXCP', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('BLLSHIW4NXX1KT9', 'UQPQA5TGW2TWXCP', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/UQPQA5TGW2TWXCP.pdf'
WHERE `order_id` = 'UQPQA5TGW2TWXCP';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('8MRXXPLNT4VCAPG', '1MB8S9H3LRD2OZX', '03-31-2018', '324.00', 1049, '1500.00', 1500, '', '1', 'M79OO9D7VZI3ALI', '', '', '324.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('QVUWTUA7ETHQCA7', '8MRXXPLNT4VCAPG', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '3', '600', '200', '1800', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('ICPU1GE78A3MKXY', '8MRXXPLNT4VCAPG', '12', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('E82R2E6BQ2PB6K6', '8MRXXPLNT4VCAPG', '12', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('WJQIMKX6NI16H1A', '8MRXXPLNT4VCAPG', '12', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('VM8YUVM9K536XH3', '8MRXXPLNT4VCAPG', '12', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/8MRXXPLNT4VCAPG.pdf'
WHERE `order_id` = '8MRXXPLNT4VCAPG';
INSERT INTO `language` (`phrase`) VALUES ('email_not_send');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('PXOZFUB7OFJ7FA2', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1050, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('C5J3HSRCXU32L91', 'PXOZFUB7OFJ7FA2', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('XRJQ7ALSLJYBACK', 'PXOZFUB7OFJ7FA2', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('CSD58XNYM6Q95LW', 'PXOZFUB7OFJ7FA2', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('VLSW3JWTUTHNE6N', 'PXOZFUB7OFJ7FA2', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('9FQH5NJ1MNKRE36', 'PXOZFUB7OFJ7FA2', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/PXOZFUB7OFJ7FA2.pdf'
WHERE `order_id` = 'PXOZFUB7OFJ7FA2';
UPDATE `language` SET `english` = ''
WHERE `id` = '889';
UPDATE `language` SET `english` = ''
WHERE `id` = '889';
UPDATE `language` SET `english` = 'Email not send !'
WHERE `id` = '889';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('5G975FU18F2GEZN', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1051, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('U3AS19U9CFR7OIO', '5G975FU18F2GEZN', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('ECZO26VBTIKP393', '5G975FU18F2GEZN', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('4DLVP9QHFKSEQEZ', '5G975FU18F2GEZN', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('FNC1TJG6OFC34S5', '5G975FU18F2GEZN', '4', '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('GRY2KJH3L63U6B2', '5G975FU18F2GEZN', '4', '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/5G975FU18F2GEZN.pdf'
WHERE `order_id` = '5G975FU18F2GEZN';
INSERT INTO `quotation` (`quotation_id`, `customer_id`, `date`, `total_amount`, `quotation`, `details`, `total_discount`, `quotation_discount`, `service_charge`, `user_id`, `store_id`, `paid_amount`, `due_amount`, `status`) VALUES ('SE89YUN2SKQA889', '1MB8S9H3LRD2OZX', '03-31-2018', '108.00', 1008, '', '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '108.00', 1);
INSERT INTO `quotation_details` (`quotation_details_id`, `quotation_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('ARWFTD6XGH51U4D', 'SE89YUN2SKQA889', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `quotation_tax_col_summary` (`quot_tax_col_id`, `quotation_id`, `tax_amount`, `tax_id`, `date`) VALUES ('FDOZCT8LGP5A2QG', 'SE89YUN2SKQA889', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `quotation_tax_col_summary` (`quot_tax_col_id`, `quotation_id`, `tax_amount`, `tax_id`, `date`) VALUES ('9XE2GZAVCR6QDD8', 'SE89YUN2SKQA889', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `quotation_tax_col_details` (`quot_tax_col_de_id`, `quotation_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('KJD8MATDVLICJXB', 'SE89YUN2SKQA889', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `quotation_tax_col_details` (`quot_tax_col_de_id`, `quotation_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('UBRHIIFVGNWI8DN', 'SE89YUN2SKQA889', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `quotation` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/SE89YUN2SKQA889.pdf'
WHERE `quotation_id` = 'SE89YUN2SKQA889';
UPDATE `invoice` SET `invoice_status` = '2'
WHERE `invoice_id` = 'MYC7YRIC1EL11OJ';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `paid_amount`, `due_amount`, `status`) VALUES ('CSAEPSEM262WBJX', 'WZVJYIAHDQ52MER', '03-31-2018', '108.00', 1052, '500.00', 500, '', 'M79OO9D7VZI3ALI', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('IZXAA21SKXTO8M2', 'CSAEPSEM262WBJX', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('OLNP1JVDECS61WG', 'CSAEPSEM262WBJX', '4', 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('PFUCSYM2TB9FGJT', 'CSAEPSEM262WBJX', '4', '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('9F88YCIJB4XIP7N', 'CSAEPSEM262WBJX', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ALZB6OQBCHWXGOU', 'CSAEPSEM262WBJX', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/CSAEPSEM262WBJX.pdf'
WHERE `order_id` = 'CSAEPSEM262WBJX';
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`, `password`) VALUES ('IUGVBVW9IKJ6I2K', 'test teteeetr', 'test', 'teteeetr', 'asfa,Encamp,Andorra,34534', 'safas', '', 'asfa', 'Encamp', '5', '34534', '', '34534', 'abbbbbn@gmail.com', 'bbe587948a2490934834340b1b4c1643');
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('IUGVBVW9IKJ6I2K', 'test teteeetr', 'test', 'teteeetr', 'asfa,Encamp,Andorra,34534', 'safas', '', 'asfa', 'Encamp', '5', '34534', '', '34534', 'abbbbbn@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('TF468EVMUMR4VGM', 'IUGVBVW9IKJ6I2K', 'M79OO9D7VZI3ALI', '03-31-2018', 108, 1053, 500, 500, 108, '0', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('GCVOGG45ZSEMGTU', '9', 'TF468EVMUMR4VGM', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('FNNZ6WJY43LCYK7', '1', 'TF468EVMUMR4VGM', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('8Y5E7U6NERIUDII', 'TF468EVMUMR4VGM', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('I79ZNJQBMF6BJH9', 'TF468EVMUMR4VGM', 4, 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('BRR97CXVAM2AFQO', 'TF468EVMUMR4VGM', 4, '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ZFF8PEN52QQK2MO', 'TF468EVMUMR4VGM', 4, '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('IDVRE3KV8QI9HHW', 'TF468EVMUMR4VGM', 4, '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/TF468EVMUMR4VGM.pdf'
WHERE `order_id` = 'TF468EVMUMR4VGM';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('IUGVBVW9IKJ6I2K', 'test teteeetr', 'test', 'teteeetr', 'asfa,Encamp,Andorra,34534', 'safas', '', 'asfa', 'Encamp', '5', '34534', '', '34534', 'abbbbbn@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('TC5GCYMK1CVEPS7', 'IUGVBVW9IKJ6I2K', 'M79OO9D7VZI3ALI', '03-31-2018', 108, 1054, 500, 500, 108, '0', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('2L6O5EUQPCLDD5U', '9', 'TC5GCYMK1CVEPS7', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('191COWOISFD7CGS', '1', 'TC5GCYMK1CVEPS7', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('OS16T5R73SR45SL', 'TC5GCYMK1CVEPS7', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('MFKE1Q2PWGSOLFP', 'TC5GCYMK1CVEPS7', 4, 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('VQYADLXGRTPQ7R2', 'TC5GCYMK1CVEPS7', 4, '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('2XMKNN3WEO6FPKZ', 'TC5GCYMK1CVEPS7', 4, '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('BDA7BQ9UMMHH1HF', 'TC5GCYMK1CVEPS7', 4, '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/TC5GCYMK1CVEPS7.pdf'
WHERE `order_id` = 'TC5GCYMK1CVEPS7';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('IUGVBVW9IKJ6I2K', 'test teteeetr', 'test', 'teteeetr', 'asfa,Encamp,Andorra,34534', 'safas', '', 'asfa', 'Encamp', '5', '34534', '', '34534', 'abbbbbn@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('WE68ZKL4VY787XG', 'IUGVBVW9IKJ6I2K', 'M79OO9D7VZI3ALI', '03-31-2018', 108, 1055, 500, 500, 108, '0', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('O8DB1OJADSCBC94', '9', 'WE68ZKL4VY787XG', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('TYAMXWLDY8G3XJI', '1', 'WE68ZKL4VY787XG', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('4AT2B1WQ2NOU5ZU', 'WE68ZKL4VY787XG', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('1XOEJBLZ3K8QWKJ', 'WE68ZKL4VY787XG', 4, 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('7PN1HQMN6MWSDQB', 'WE68ZKL4VY787XG', 4, '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('F18SJNFAC3SG6TF', 'WE68ZKL4VY787XG', 4, '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('IVZT6RTBMPI9O2D', 'WE68ZKL4VY787XG', 4, '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/WE68ZKL4VY787XG.pdf'
WHERE `order_id` = 'WE68ZKL4VY787XG';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('IUGVBVW9IKJ6I2K', 'test teteeetr', 'test', 'teteeetr', 'asfa,Encamp,Andorra,34534', 'safas', '', 'asfa', 'Encamp', '5', '34534', '', '34534', 'abbbbbn@gmail.com');
INSERT INTO `order` (`order_id`, `customer_id`, `store_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `due_amount`, `service_charge`, `status`) VALUES ('UV6SAIKQAUJHSGS', 'IUGVBVW9IKJ6I2K', 'M79OO9D7VZI3ALI', '03-31-2018', 108, 1056, 500, 500, 108, '0', 1);
INSERT INTO `order_delivery` (`order_delivery_id`, `delivery_id`, `order_id`, `details`) VALUES ('D9GKAMGKHGH2TN7', '9', 'UV6SAIKQAUJHSGS', '');
INSERT INTO `order_payment` (`order_payment_id`, `payment_id`, `order_id`, `details`) VALUES ('OSMMO3HHU3KQANX', '1', 'UV6SAIKQAUJHSGS', '');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1R3ZGJ9RLAIOK8P', 'UV6SAIKQAUJHSGS', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', 1, '600', '200', 600, 500, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('PY37CV4RIUYSQ1W', 'UV6SAIKQAUJHSGS', 4, 'H5MQN4NXJBSDX4L', '03-31-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('5XYN5NUDNQ5VXR2', 'UV6SAIKQAUJHSGS', 4, '5SN9PRWPN131T4V', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ME2VBDK5K4DN3BP', 'UV6SAIKQAUJHSGS', 4, '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '03-31-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('QT8IILK2CCJ89OV', 'UV6SAIKQAUJHSGS', 4, '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '03-31-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/UV6SAIKQAUJHSGS.pdf'
WHERE `order_id` = 'UV6SAIKQAUJHSGS';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('FFPRZG56ACH4JTO', '145IHAQYOAYWSAO', '04-01-2018', '108.00', 1057, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('8GH8L9W3UMKQZT9', 'FFPRZG56ACH4JTO', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('4OMDP17PIK8NYGY', 'FFPRZG56ACH4JTO', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('R1ETROLNBBRD2AB', 'FFPRZG56ACH4JTO', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('6AF8NM4ZUF5KEBT', 'FFPRZG56ACH4JTO', '4', '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('BJ9G9BE3HO1UUNR', 'FFPRZG56ACH4JTO', '4', '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/FFPRZG56ACH4JTO.pdf'
WHERE `order_id` = 'FFPRZG56ACH4JTO';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('8RNPPKLZAJDISMK', '3IBLLESQFSIWB5Y', '04-01-2018', '108.00', 1058, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('XKCAIHL3XUV2FH5', '8RNPPKLZAJDISMK', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('VQRTI2K3M375C3I', '8RNPPKLZAJDISMK', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('TJOYPTQ9UF21HNO', '8RNPPKLZAJDISMK', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ILG8EGCRXXBWUEU', '8RNPPKLZAJDISMK', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('YEU2MLYG6KH9IT4', '8RNPPKLZAJDISMK', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/8RNPPKLZAJDISMK.pdf'
WHERE `order_id` = '8RNPPKLZAJDISMK';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('3URZY3KFBDKXYMC', '3IBLLESQFSIWB5Y', '04-01-2018', '108.00', 1059, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('8AEZJ3K5KPMVKZL', '3URZY3KFBDKXYMC', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('P8CWUSIISXWWPXD', '3URZY3KFBDKXYMC', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('3XPWYV9GGUECTB9', '3URZY3KFBDKXYMC', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('S5BDKJATVW6CDMH', '3URZY3KFBDKXYMC', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('L5KAGXK81VUWAI2', '3URZY3KFBDKXYMC', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/3URZY3KFBDKXYMC.pdf'
WHERE `order_id` = '3URZY3KFBDKXYMC';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('OPZID8VTCD9DF2Q', '3IBLLESQFSIWB5Y', '04-01-2018', '108.00', 1060, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('QYRF6SHTFAM8MAA', 'OPZID8VTCD9DF2Q', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('2M3SGKK7Z63XUMH', 'OPZID8VTCD9DF2Q', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('15Y3TRAI61IC8DQ', 'OPZID8VTCD9DF2Q', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('UTSKMJP42Y6WRJK', 'OPZID8VTCD9DF2Q', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('P2VOG2FDIIBLSZ8', 'OPZID8VTCD9DF2Q', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/OPZID8VTCD9DF2Q.pdf'
WHERE `order_id` = 'OPZID8VTCD9DF2Q';
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'asfdasd'
WHERE `email_id` = 1;
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'asfdasd'
WHERE `email_id` = 1;
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangir.bdtask@gmail.com', `password` = 'jahangir23255'
WHERE `email_id` = 1;
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('4CTCV4DU2GINY99', '3IBLLESQFSIWB5Y', '04-01-2018', '108.00', 1061, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('DBU43AZZFN4GGI2', '4CTCV4DU2GINY99', '67296524', '7LKAJ3R5QHJXLRG', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('DQP5AGG844ENCVS', '4CTCV4DU2GINY99', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('RP1U7CJXWPQRL63', '4CTCV4DU2GINY99', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('FHJJIA7N38Y8Q17', '4CTCV4DU2GINY99', '4', '67296524', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('3OE19Z53GO5ZIMZ', '4CTCV4DU2GINY99', '4', '67296524', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/4CTCV4DU2GINY99.pdf'
WHERE `order_id` = '4CTCV4DU2GINY99';
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'smtp.googlemail.com', `smtp_port` = '465', `sender_email` = 'jahangi@gmail.com', `password` = 'jahangir23255'
WHERE `email_id` = 1;
UPDATE `email_configuration` SET `protocol` = 'smtp', `mailtype` = 'html', `smtp_host` = 'smtp.googlemail.com', `smtp_port` = '76', `sender_email` = 'jahangi@gmail.com', `password` = 'jahangir23255'
WHERE `email_id` = 1;
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `user_id`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('LZL4X4E5TK6PJLP', '1MB8S9H3LRD2OZX', '04-01-2018', '108.00', 1062, '500.00', 500, '', '1', 'M79OO9D7VZI3ALI', '', '', '108.00', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('RHWFRSR5Q3U64GD', 'LZL4X4E5TK6PJLP', '67296524', 'S3I7DXQ4XZ2CJV6', 'M79OO9D7VZI3ALI', '1', '600', '200', '600', '500', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('DVH24F957UDBZHX', 'LZL4X4E5TK6PJLP', '4', 'H5MQN4NXJBSDX4L', '04-01-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('12PFQYZNX2DD8Y8', 'LZL4X4E5TK6PJLP', '4', '5SN9PRWPN131T4V', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('5PYEXZR766KHVS4', 'LZL4X4E5TK6PJLP', '4', '67296524', 'H5MQN4NXJBSDX4L', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('HUOTYRBUZ56ESP8', 'LZL4X4E5TK6PJLP', '4', '67296524', '5SN9PRWPN131T4V', 'S3I7DXQ4XZ2CJV6', '04-01-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.3/my-assets/pdf/LZL4X4E5TK6PJLP.pdf'
WHERE `order_id` = 'LZL4X4E5TK6PJLP';
INSERT INTO `product_category` (`category_id`, `category_name`, `top_menu`, `menu_pos`, `cat_favicon`, `parent_category_id`, `cat_image`, `cat_type`, `status`) VALUES ('7K2QUPAJE43T3NH', 'Tab-1', '', '1', 'http://localhost/style_dunia/v1.4/my-assets/image/category/5789a53cfdc210911add763fb11816bc.jpg', 'ISQXQX2A1FLI581', 'http://localhost/style_dunia/v1.4/my-assets/image/category.png', 2, 1);
;
;
;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND WHERE parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND WHERE parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = RPJY8XI851IXIL9;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('177529838268694', 'sadfsa', 'a@gmail.com', '7330d6ea1bded06f2537ff584996db80', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('371879536366789', 'sadfsa', 'a@gmail.com', '7330d6ea1bded06f2537ff584996db80', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('779261835371899', 'sadfsa', 'a1@gmail.com', '7330d6ea1bded06f2537ff584996db80', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('Q14QEZ1XKJLFEIR', 'sadfsa', 'a2@gmail.com', '7330d6ea1bded06f2537ff584996db80', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('UO929LNEAVXAZP3', 'sadfsa', 'a@c.com', '7330d6ea1bded06f2537ff584996db80', 1);
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `customer_email`, `password`, `status`) VALUES ('D4PRLDOTHXCFZEF', 'Jahangir Alam', 'jahangir@gmail.com', '41d99b369894eb1ec3f461135132d8bb', 1);
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 1;
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "RPJY8XI851IXIL9";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "ISQXQX2A1FLI581";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "DHSD1T499MMR8OE";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "IPARLVCRKG5VJOK";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "X4E5TK6PJLPRHWF";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "SW1YZ8NYMKF1NW1";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "T8PHRCXGDA3YWW4";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "N5JHK925CZQL3JI";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "65R7HIJNGWMBB53";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "URNAB358CW1EYJ7";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "QVNXQ1E3D5N138G";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "BVNWJFX3YCOBTFS";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "8X1RVEZJVYOKBVW";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "WAPKPYE5L87KXH7";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "2LRYDWINMPORPCR";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "7G7Y2VA6ZOKPKOD";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "BJTY3A3D8YUGXH3";
Select category_id as id,category_name as name,cat_favicon as image from product_category WHERE cat_type = 2 AND parent_category_id = "TJYBO1CDC5X7X2K";
UPDATE `customer_information` SET `full_name` = 'Sarwar Jahan', `first_name` = 'Sarwar', `last_name` = 'Jahan', `email` = 'sarwar@gmail.com', `address_1` = 'dhaka,bangladesh', `address_2` = 'chittagong,bangladesh', `city` = 'dhaka', `state` = 'state', `country` = '8', `zip` = '123', `mobile` = '543', `image` = 'adfassa.jpg', `company` = 'student', `password` = '123456'
WHERE `customer_id` = '4XPPDE92MWP53MT';
UPDATE `customer_information` SET `customer_name` = 'Sarwar Jahan', `first_name` = 'Sarwar', `last_name` = 'Jahan', `customer_email` = 'sarwar@gmail.com', `customer_short_address` = 'dhaka,state,8,123', `customer_address_1` = 'dhaka,bangladesh', `customer_address_2` = 'chittagong,bangladesh', `city` = 'dhaka', `state` = 'state', `country` = '8', `zip` = '123', `customer_mobile` = '543', `image` = 'adfassa.jpg', `company` = 'student', `password` = '123456'
WHERE `customer_id` = '4XPPDE92MWP53MT';
UPDATE `customer_information` SET `customer_name` = 'Sarwar Jahan', `first_name` = 'Sarwar', `last_name` = 'Jahan', `customer_email` = 'sarwar@gmail.com', `customer_short_address` = 'dhaka,state,8,123', `customer_address_1` = 'dhaka,bangladesh', `customer_address_2` = 'chittagong,bangladesh', `city` = 'dhaka', `state` = 'state', `country` = '8', `zip` = '123', `customer_mobile` = '543', `image` = 'adfassa.jpg', `company` = 'student', `password` = '123456'
WHERE `customer_id` = '4XPPDE92MWP53MT';
UPDATE `customer_information` SET `customer_name` = 'Sarwar Jahan', `first_name` = 'Sarwar', `last_name` = 'Jahan', `customer_email` = 'sarwar@gmail.com', `customer_short_address` = 'dhaka,state,8,123', `customer_address_1` = 'dhaka,bangladesh', `customer_address_2` = 'chittagong,bangladesh', `city` = 'dhaka', `state` = 'state', `country` = '8', `zip` = '123', `customer_mobile` = '543', `image` = 'adfassa.jpg', `company` = 'student', `password` = '123456'
WHERE `customer_id` = '4XPPDE92MWP53MT';
UPDATE `customer_information` SET `customer_name` = 'Sarwar Jahan', `first_name` = 'Sarwar', `last_name` = 'Jahan', `customer_email` = 'sarwar@gmail.com', `customer_short_address` = 'dhaka,state,Antarctica,123', `customer_address_1` = 'dhaka,bangladesh', `customer_address_2` = 'chittagong,bangladesh', `city` = 'dhaka', `state` = 'state', `country` = 'Antarctica', `zip` = '123', `customer_mobile` = '543', `image` = 'adfassa.jpg', `company` = 'student', `password` = '123456'
WHERE `customer_id` = '4XPPDE92MWP53MT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
DELETE FROM `wishlist`
WHERE `wishlist_id` = '4PTY61LHFAGFNUT';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = 'a@gmail.com', `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = NULL
WHERE `customer_id` = '7T1LH1KOXBPV81V';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
UPDATE `customer_information` SET `customer_name` = ' ', `first_name` = NULL, `last_name` = NULL, `customer_email` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_address_2` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `customer_mobile` = NULL, `image` = NULL, `company` = NULL, `password` = 'bbe587948a2490934834340b1b4c1643'
WHERE `customer_id` = '7Q5DLM4UQ4MM37X';
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('2S3AZLPVN5CHFH6', 'HHI5BD6UIDJU5PG', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('2C8WTUIRVTVI9YF', 'HHI5BD6UIDJU5PG', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('89AD7ME22WULJD1', 'Z3RXCNYK7NOWTIX', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('2UTY3OS5PAXHLDO', 'Z3RXCNYK7NOWTIX', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('375QRALIVT28TOU', '6V4TDRVZ8BNOFUX', '1', '1', '123456', '1', '1', NULL, '1', '1', 1);
UPDATE `order_details` SET quantity = quantity+1, total_price = total_price+1
WHERE `order_id` = '6V4TDRVZ8BNOFUX'
AND `product_id` = '1'
AND `variant_id` = '1';
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('TD2LM5F1C6DY5BV', '6V4TDRVZ8BNOFUX', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1UWEAKSWB4DW7OE', '6V4TDRVZ8BNOFUX', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('VA9CIWFK7B4DBWG', 'CLYAOJ8UTM5EF1X', '1', '1', '123456', '1', '1', NULL, '1', '1', 1);
UPDATE `order_details` SET quantity = quantity+1, total_price = total_price+1
WHERE `order_id` = 'CLYAOJ8UTM5EF1X'
AND `product_id` = '1'
AND `variant_id` = '1';
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('S3Z9XSQ8HLYDF2C', 'CLYAOJ8UTM5EF1X', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('27A43RVZUNV74QT', 'CLYAOJ8UTM5EF1X', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('4BR37GO1MPBAJAH', 'WV7IUDP4Y8MRJ8X', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('QGWJXISDUAM9TTQ', 'WV7IUDP4Y8MRJ8X', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('KX2SK5ZZPKESJBH', 'YCEK8IPSBB9UCWU', '63623141', 'ED8RNPPKLZAJDIS', '123456', '10', '100', '123', '1000', '5', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1ZYZ1IM6M4WO88T', 'YCEK8IPSBB9UCWU', '91749131', '7LKAJ3R5QHJXLRG', '123456', '20', '200', '444', '2000', '10', 1);
UPDATE `tax` SET `tax_name` = 'tax 3'
WHERE `tax_id` = '5SN9PRWPN131T4V';
UPDATE `tax` SET `tax_name` = 'tax 3', `status` = 0
WHERE `tax_id` = '5SN9PRWPN131T4V';
UPDATE `tax` SET `tax_name` = 'tax 3', `status` = 1
WHERE `tax_id` = '5SN9PRWPN131T4V';
UPDATE `tax` SET `tax_name` = 'tax 2 ', `status` = 0
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'tax 2 ', `status` = 1
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'tax 2 ', `status` = 0
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'tax 2 ', `status` = 1
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'tax 2 '
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'Tax 2 '
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'Tax 3'
WHERE `tax_id` = '5SN9PRWPN131T4V';
UPDATE `tax` SET `tax_name` = 'Tax 3'
WHERE `tax_id` = '5SN9PRWPN131T4V';
UPDATE `tax` SET `tax_name` = 'Tax 2 '
WHERE `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `tax` SET `tax_name` = 'Tax 1'
WHERE `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('12E3RUEIECI8RJC', '91749131', 20, 'H5MQN4NXJBSDX4L', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('J3R5QHJXLRGFHDM', '91749131', 40, 'H5MQN4NXJBSDX4L', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `tax_amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('NCVS7Y9DBFEBSOW', '91749131', 40, '91749131', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('BOFGUNXCCNL21KD', '91749131', 40, '91749131', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
INSERT INTO `tax_product_service` (`t_p_s_id`, `product_id`, `tax_id`, `tax_percentage`) VALUES ('TZSLD2L9FMJ12BC', '63623141', '52C2SKCKGQY6Q9J', '1');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('JVV9C76QM4WHNRV', '63623141', 1, '52C2SKCKGQY6Q9J', '16-04-2018');
UPDATE `tax_product_service` SET `product_id` = '63623141', `tax_id` = '52C2SKCKGQY6Q9J', `tax_percentage` = '2'
WHERE `t_p_s_id` = 'TZSLD2L9FMJ12BC';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+2
WHERE `order_id` = '63623141'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `tax_product_service` (`t_p_s_id`, `product_id`, `tax_id`, `tax_percentage`) VALUES ('1WUS5U1GNSOAHGI', '91749131', '52C2SKCKGQY6Q9J', '4');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+2
WHERE `order_id` = '63623141'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('CIC8RGLE3OO6NOP', '91749131', 16, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('Z32ABRKMQBJ2DXU', '63NVE4TOCEKUUXB', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = '63NVE4TOCEKUUXB'
AND `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = '63NVE4TOCEKUUXB'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('BXK5ADOPYW31D6G', 'UZ5RP18W4191QDO', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'UZ5RP18W4191QDO'
AND `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'UZ5RP18W4191QDO'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('8YXSRUSUG2B1P5L', 'MHLYK1IDFY7UAKI', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'MHLYK1IDFY7UAKI'
AND `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'MHLYK1IDFY7UAKI'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('8Q17TNTPJAKWMS9', 'DY8VRP1U7CJXWPQ', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('K8UM3OE19Z53GO5', 'DY8VRP1U7CJXWPQ', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'DY8VRP1U7CJXWPQ'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('NKMFYLWRVBRT8AW', 'DY8VRP1U7CJXWPQ', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'DY8VRP1U7CJXWPQ'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('TTVBOJEX752QJYN', 'DY8VRP1U7CJXWPQ', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('QJDBFS1K67HZTQD', 'DCFOVV5YEU2MLYG', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('DUVRTWJ99GAWOBZ', 'DCFOVV5YEU2MLYG', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'DCFOVV5YEU2MLYG'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('7TPM8OHTIMHLDAS', 'DCFOVV5YEU2MLYG', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'DCFOVV5YEU2MLYG'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('5ZUN9WT87JC7YKW', 'DCFOVV5YEU2MLYG', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('4ORX5UX4SGYAYIH', 'ZS4BHQ9B4X4ZF42', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('7YGK2MASLDGA1WX', 'ZS4BHQ9B4X4ZF42', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'ZS4BHQ9B4X4ZF42'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('V99GMNGSAHXF2CU', 'ZS4BHQ9B4X4ZF42', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('LU4OYWALU7U7UZ8', 'ZS4BHQ9B4X4ZF42', 20, '5SN9PRWPN131T4V', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'ZS4BHQ9B4X4ZF42'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('DWPNUHKVQ3N6XMH', 'ZS4BHQ9B4X4ZF42', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'ZS4BHQ9B4X4ZF42'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('QRG4J4AOGV1IX4W', 'UMV3X1V88D8THNL', 20, '5SN9PRWPN131T4V', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'UMV3X1V88D8THNL'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('QFE7UKB6AUXE5E4', 'FIVDLX96FODEVCT', 20, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('T31634WYYWSTZHV', 'FIVDLX96FODEVCT', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'FIVDLX96FODEVCT'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('YWW4N5JHK925CZQ', 'FIVDLX96FODEVCT', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `tax_product_service` (`t_p_s_id`, `product_id`, `tax_id`, `tax_percentage`) VALUES ('ZYZ1IM6M4WO88TS', '63623141', '5SN9PRWPN131T4V', '1.5');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('RJQZP6S7Q2L3IWI', 'LV464GR3NYD8GT1', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('44ZBA4YE1N4NC93', 'LV464GR3NYD8GT1', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'LV464GR3NYD8GT1'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('Y4DPPM5WYQBCVLP', 'LV464GR3NYD8GT1', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'LV464GR3NYD8GT1'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('7UOAAV2NS2SMHSD', 'LV464GR3NYD8GT1', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('SZRTU7FTQ9FQAJ6', 'B91XDUYPZIRXMDM', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('IMVOVJLFS8KCZD4', 'B91XDUYPZIRXMDM', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'B91XDUYPZIRXMDM'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('7R97JJBA2U75XHW', 'B91XDUYPZIRXMDM', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'B91XDUYPZIRXMDM'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('6XO3K28TA5KIMOS', 'B91XDUYPZIRXMDM', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('MWIFGXGT8I4WSK2', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1000, '200', '200', '100', '123456', '', '10000', 0, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('1D68SG9NXN3BI6F', 'MWIFGXGT8I4WSK2', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('84POVVJO6BCRMLD', 'MWIFGXGT8I4WSK2', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('R9AA2FHCG7SAAYA', 'MWIFGXGT8I4WSK2', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('AGQK39ZPTJMDFO9', 'MWIFGXGT8I4WSK2', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('IFAV5EB7ZY4R1RD', '91749131', 40, 'H5MQN4NXJBSDX4L', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('YPWDK1XQXGZSWWN', '91749131', 40, '91749131', 'H5MQN4NXJBSDX4L', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'MWIFGXGT8I4WSK2'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('K7N3NM19CBX9SB8', 'MWIFGXGT8I4WSK2', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'MWIFGXGT8I4WSK2'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('DEQWMBPVVC3PBYY', 'MWIFGXGT8I4WSK2', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('JJZX3OL1ES16HFZ', '91749131', 40, '91749131', 'H5MQN4NXJBSDX4L', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'MWIFGXGT8I4WSK2'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('77YG6DTSHIBUEF9', 'MWIFGXGT8I4WSK2', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'MWIFGXGT8I4WSK2'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('UN8OAR76KA9C48M', 'MWIFGXGT8I4WSK2', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('JM2HETG422PUFQH', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1001, '200', '200', '100', '123456', '', 0, '10000', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('WMH3PEPHV3GKKLP', 'JM2HETG422PUFQH', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('XL9WP4T2FTVN83Z', 'JM2HETG422PUFQH', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('JOHMBW9PTG4GQHB', 'JM2HETG422PUFQH', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('QVIKXOO3V7LKTVB', 'JM2HETG422PUFQH', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'JM2HETG422PUFQH'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('L3WNANF3DW1K3VO', 'JM2HETG422PUFQH', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'JM2HETG422PUFQH'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('RCX8RU3K5YEFCT4', 'JM2HETG422PUFQH', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'JM2HETG422PUFQH'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('KLNSDC83EVR7H4U', 'JM2HETG422PUFQH', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'JM2HETG422PUFQH'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('TS7J2GBMUHD9A29', 'JM2HETG422PUFQH', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('D5U8VHD2ON8Z91K', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1002, '200', '200', '100', '123456', '', 0, '10000', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('9CPWKD3E546NPXD', 'D5U8VHD2ON8Z91K', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('MGOQ35PM2YV63NG', 'D5U8VHD2ON8Z91K', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('OCED8DXW8AHYMMS', 'D5U8VHD2ON8Z91K', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('VYL1E7QXYQ4QFLB', 'D5U8VHD2ON8Z91K', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('528HERN76V8IP71', 'D5U8VHD2ON8Z91K', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('3Q5GXGHIQNLOJEC', 'D5U8VHD2ON8Z91K', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'D5U8VHD2ON8Z91K'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('5RSD19U1QYRUTKY', 'D5U8VHD2ON8Z91K', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'D5U8VHD2ON8Z91K'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('XHIN6DKV8581YR1', 'D5U8VHD2ON8Z91K', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('TQR3ND2ZY75U53Y', 'D5U8VHD2ON8Z91K', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'D5U8VHD2ON8Z91K'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('RIBF3DJBSLJKNIU', 'D5U8VHD2ON8Z91K', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'D5U8VHD2ON8Z91K'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('OVGUWO19PZPR3F9', 'D5U8VHD2ON8Z91K', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('VK6IFA8U6SI3ZQO', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1003, '200', '200', '100', 'M79OO9D7VZI3ALI', '', 0, '10000', 1);
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('8TE3O3TE71T847J', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1004, '200', '200', '100', 'M79OO9D7VZI3ALI', '', 0, '10000', 1);
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', '862Z323PBKAXEVV', 'Sheikh Akij Uddin', 'Sheikh', 'Akij Uddin', 'Dhaka,Dhaka,Bangladesh,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', 'Bangladesh', '1205', 'Founder');
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', 'I2T1WGBXRQQD3HW', 'Sheikh Akij Uddin', 'Sheikh', 'Akij Uddin', 'Dhaka,Dhaka,Antarctica,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', 'HMBAXHER8HEDWEO', 'Sheikh Akij Uddin', 'Sheikh', 'Akij Uddin', 'Dhaka,Dhaka,Antarctica,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('HMBAXHER8HEDWEO', '1MB8S9H3LRD2OZX', '16-04-2018', NULL, 1005, NULL, NULL, NULL, 'M79OO9D7VZI3ALI', NULL, 0, NULL, 1);
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', 'XBBQRR2SHDHTI9R', 'Sheikh Akij Uddin', 'Sheikh', NULL, ',Dhaka,,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('XBBQRR2SHDHTI9R', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1005, '200', '200', '100', 'M79OO9D7VZI3ALI', '', '10000', 0, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('UTYOY1NF6WVPRZO', 'XBBQRR2SHDHTI9R', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('QLAQ9184HTSE5IG', 'XBBQRR2SHDHTI9R', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('OFQ6K3XF6AX61S3', 'XBBQRR2SHDHTI9R', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('TAU8JI3OLUSC1RO', 'XBBQRR2SHDHTI9R', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('IAHY2DKCAP223BN', 'XBBQRR2SHDHTI9R', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('SRMAS7MOSQUWZ64', 'XBBQRR2SHDHTI9R', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'XBBQRR2SHDHTI9R'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('6H9TDASEDBI5UWT', 'XBBQRR2SHDHTI9R', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'XBBQRR2SHDHTI9R'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('U1JR1KZ46IYF9G5', 'XBBQRR2SHDHTI9R', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('3QFSWL3NABHUZU8', 'XBBQRR2SHDHTI9R', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'XBBQRR2SHDHTI9R'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('RD5FI2Y2XMYCEK8', 'XBBQRR2SHDHTI9R', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'XBBQRR2SHDHTI9R'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('5ZZPKESJBH1ZYZ1', 'XBBQRR2SHDHTI9R', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', '3PEBS3L5GJXSCWF', 'Sheikh Akij Uddin', 'Sheikh', NULL, ',Dhaka,Antarctica,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('3PEBS3L5GJXSCWF', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1006, '200', '200', '100', 'M79OO9D7VZI3ALI', '', '10000', 0, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('T5KHG3C45TKRZR4', '3PEBS3L5GJXSCWF', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('FMGAJ75X37JGJRW', '3PEBS3L5GJXSCWF', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('NTIXUKITTJDE6B5', '3PEBS3L5GJXSCWF', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('RHUHO8JFC6GNHQ1', '3PEBS3L5GJXSCWF', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('4CP8JNGIXJUVYS5', '3PEBS3L5GJXSCWF', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('POM93OSJF2FSPEB', '3PEBS3L5GJXSCWF', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = '3PEBS3L5GJXSCWF'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('3A776V1W97NAUF9', '3PEBS3L5GJXSCWF', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = '3PEBS3L5GJXSCWF'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('QUZ18B7IIU6IDQB', '3PEBS3L5GJXSCWF', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('6YTO12NO8VRBB2P', '3PEBS3L5GJXSCWF', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = '3PEBS3L5GJXSCWF'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('AGQYR1H1ZLB91C2', '3PEBS3L5GJXSCWF', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = '3PEBS3L5GJXSCWF'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('Q4QSB3MDCI1M8VZ', '3PEBS3L5GJXSCWF', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', 'VGJKPTMNGZTXYUV', 'Sheikh Akij Uddin', 'Sheikh', 'Akij Uddin', 'Dhaka,Dhaka,Antarctica,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('VGJKPTMNGZTXYUV', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1007, '200', '200', '100', 'M79OO9D7VZI3ALI', '', '10000', 0, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('9JSNR2WU7ULIRPU', 'VGJKPTMNGZTXYUV', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('B734BOQE3Y15RAU', 'VGJKPTMNGZTXYUV', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('BTCGELBRDGZ3MKJ', 'VGJKPTMNGZTXYUV', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('A9JPOMGO4SW8Y5Z', 'VGJKPTMNGZTXYUV', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('I2OBAQTXRUOHMPL', 'VGJKPTMNGZTXYUV', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('177K63M3ZKT24BA', 'VGJKPTMNGZTXYUV', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'VGJKPTMNGZTXYUV'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('NN34Z56SHHPI6XK', 'VGJKPTMNGZTXYUV', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'VGJKPTMNGZTXYUV'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('CXQWVOKE8Q8ISKU', 'VGJKPTMNGZTXYUV', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('FG5YWHWQ5RWQVNJ', 'VGJKPTMNGZTXYUV', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'VGJKPTMNGZTXYUV'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('65992DJQZHKC7D9', 'VGJKPTMNGZTXYUV', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'VGJKPTMNGZTXYUV'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('RMSCW16D36C2O8J', 'VGJKPTMNGZTXYUV', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('1MB8S9H3LRD2OZX', 'G8PSBWJ2VLPJA67', 'Sheikh Akij Uddin', 'Sheikh', 'Akij Uddin', 'Dhaka,Dhaka,Antarctica,1205', 'Dhaka', 'Bangladesh', '0123456', 'akij@gmail.com', 'Dhaka', 'Dhaka', '8', '1205', 'Founder');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('G8PSBWJ2VLPJA67', '1MB8S9H3LRD2OZX', '16-04-2018', '10000', 1008, '200', '200', '100', 'M79OO9D7VZI3ALI', '', '10000', 0, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('TBXG66RHZKZPGQG', 'G8PSBWJ2VLPJA67', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('45EI75QZT2J8MYX', 'G8PSBWJ2VLPJA67', 2, '52C2SKCKGQY6Q9J', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('3IHPWTP2JQ7OBL3', 'G8PSBWJ2VLPJA67', 2, '63623141', '52C2SKCKGQY6Q9J', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('V3DX86JV2G3G38H', 'G8PSBWJ2VLPJA67', 1.5, '5SN9PRWPN131T4V', '16-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('SGEOHY96LSOTROZ', 'G8PSBWJ2VLPJA67', 1.5, '63623141', '5SN9PRWPN131T4V', 'ED8RNPPKLZAJDIS', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('C3S2H4X7RX9A67H', 'G8PSBWJ2VLPJA67', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = '7LKAJ3R5QHJXLRG'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'G8PSBWJ2VLPJA67'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('U29IH7D6CKYEU99', 'G8PSBWJ2VLPJA67', 16, '91749131', '52C2SKCKGQY6Q9J', '7LKAJ3R5QHJXLRG', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'G8PSBWJ2VLPJA67'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('ADLQTBVBYA3VAKO', 'G8PSBWJ2VLPJA67', 20, '91749131', '5SN9PRWPN131T4V', '7LKAJ3R5QHJXLRG', '16-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('G21OQZZIRCC55RE', 'G8PSBWJ2VLPJA67', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', 1);
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+40
WHERE `order_id` = '91749131'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'FHDMR9AOQ7ZMJ8F'
AND `product_id` = '91749131';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+16
WHERE `order_id` = 'G8PSBWJ2VLPJA67'
AND `tax_id` = '52C2SKCKGQY6Q9J';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('KKZ11B2PNP5RI13', 'G8PSBWJ2VLPJA67', 16, '91749131', '52C2SKCKGQY6Q9J', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+20
WHERE `order_id` = 'G8PSBWJ2VLPJA67'
AND `tax_id` = '5SN9PRWPN131T4V';
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('VJYIAHDQ52MERPX', 'G8PSBWJ2VLPJA67', 20, '91749131', '5SN9PRWPN131T4V', 'FHDMR9AOQ7ZMJ8F', '16-04-2018');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `order_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('GJMGERURNTNBNW8', 'WNHBW1ZZVIKC7GG', '22-04-2018', '2000', 1009, '1000', '1000', '200', 'M79OO9D7VZI3ALI', 'hahaha', '2000', 0, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('JJITHULWV744L8S', 'OV5TMBWGACHI8O7', '34175229', 'C2YDWB5SBR58GW5', 'M79OO9D7VZI3ALI', 4, 234, NULL, 936, 956, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('V6ZTXK43R8OL46B', 'OV5TMBWGACHI8O7', '78626522', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, NULL, 150, 0, 1);
UPDATE `customer_information` SET `customer_id` = 'WNHBW1ZZVIKC7GG', `order_id` = 'ZTCAWK2CQ81QYYF', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = 'Bangladesh', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = 'Bangladesh', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('145IHAQYOAYWSAO', '2J5IR1ETROLNBBR', 'robin', 'Dhaka,Dhaka,Antarctica,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', '8', '1216', '');
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('145IHAQYOAYWSAO', 'IMDN9PKB9NNA46W', 'robin', 'Dhaka,Dhaka,Antarctica,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', '8', '1216', '');
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('145IHAQYOAYWSAO', '2WI9K8FYA63X7D9', 'robin', 'Dhaka,Dhaka,Antarctica,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', '8', '1216', '');
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('145IHAQYOAYWSAO', 'HRV4GYAD79OAKLP', 'robin', 'Dhaka,Dhaka,Antarctica,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', '8', '1216', '');
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('145IHAQYOAYWSAO', 'JTGFEZUFJA6S7JG', 'robin', 'Dhaka,Dhaka,Antarctica,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', '8', '1216', '');
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
UPDATE `shipping_info` SET `customer_id` = '145IHAQYOAYWSAO', `order_id` = 'MRCFTMWLDKJOKNF', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = '145IHAQYOAYWSAO';
UPDATE `customer_information` SET `customer_name` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_mobile` = NULL, `customer_email` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `company` = NULL
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('WNHBW1ZZVIKC7GG', 'O4SBWQMBN4C7TEO', 'robin', 'Dhaka,Dhaka,,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Dhaka', 'Bangladesh', '1216', '');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('O4SBWQMBN4C7TEO', 'WNHBW1ZZVIKC7GG', '24-04-2018', '2000', 1010, '1000', '200', 'M79OO9D7VZI3ALI', 'hahaha', 0, '2000', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('YBD33Z9CIJPSPZ1', 'O4SBWQMBN4C7TEO', '34175229', 'C2YDWB5SBR58GW5', 'M79OO9D7VZI3ALI', 4, 234, NULL, 936, 956, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('BM1V8UMGD6JJ46P', 'O4SBWQMBN4C7TEO', '78626522', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, NULL, 150, 0, 1);
UPDATE `customer_information` SET `customer_name` = NULL, `customer_short_address` = ',,,', `customer_address_1` = NULL, `customer_mobile` = NULL, `customer_email` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `company` = NULL
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `shipping_info` SET `customer_id` = 'WNHBW1ZZVIKC7GG', `order_id` = 'CASUJ8JWERBNLAN', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = 'Bangladesh', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('CASUJ8JWERBNLAN', 'WNHBW1ZZVIKC7GG', '24-04-2018', '2000', 1011, '1000', '200', 'M79OO9D7VZI3ALI', 'hahaha', 0, '2000', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1ELFPG27R2HWUTA', 'CASUJ8JWERBNLAN', '34175229', 'C2YDWB5SBR58GW5', 'M79OO9D7VZI3ALI', 4, 234, NULL, 936, 956, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('1X68IPLPV8FKZ4D', 'CASUJ8JWERBNLAN', '78626522', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, NULL, 150, 0, 1);
UPDATE `customer_information` SET `customer_name` = NULL, `customer_short_address` = ',,Antarctica,', `customer_address_1` = NULL, `customer_mobile` = NULL, `customer_email` = NULL, `city` = NULL, `state` = NULL, `country` = NULL, `zip` = NULL, `company` = NULL
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
UPDATE `shipping_info` SET `customer_id` = 'WNHBW1ZZVIKC7GG', `order_id` = '4EFN83SX8GAIYJH', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Dhaka,Antarctica,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Dhaka', `country` = '8', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'WNHBW1ZZVIKC7GG';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('4EFN83SX8GAIYJH', 'WNHBW1ZZVIKC7GG', '24-04-2018', '2000', 1012, '1000', '200', 'M79OO9D7VZI3ALI', 'hahaha', 0, '2000', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('3SRIVK4YIL2WCQJ', '4EFN83SX8GAIYJH', '34175229', 'C2YDWB5SBR58GW5', 'M79OO9D7VZI3ALI', 4, 234, NULL, 936, 956, 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('Y1C37R9L8BSL5VV', '4EFN83SX8GAIYJH', '78626522', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, NULL, 150, 0, 1);
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
INSERT INTO `shipping_info` (`customer_id`, `order_id`, `customer_name`, `customer_short_address`, `customer_address_1`, `customer_mobile`, `customer_email`, `city`, `state`, `country`, `zip`, `company`) VALUES ('P8SUNHABSBFDOIX', '1J6PDHEAKLBV4Y4', 'robin', 'Dhaka,Chattagam,Bangladesh,1216', 'dhaka 1216', '01625878789', 'mostafa@fgmial.com', 'Dhaka', 'Chattagam', '18', '1216', '');
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('1J6PDHEAKLBV4Y4', 'P8SUNHABSBFDOIX', '24-04-2018', '1612.8', 1013, '3824.0', '100', 'M79OO9D7VZI3ALI', 'something', 0, '1612.8', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('AY7JXLDRNZ2JQLE', '1J6PDHEAKLBV4Y4', '78626522', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, NULL, 150, 0, 1);
UPDATE `order_details` SET quantity = quantity+3, total_price = total_price+450
WHERE `order_id` = '1J6PDHEAKLBV4Y4'
AND `product_id` = '78626522'
AND `variant_id` = 'DZT2RNVHGWCVQAS';
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('ER8ASWW1TNEA9M2', '1J6PDHEAKLBV4Y4', '34175229', 'C2YDWB5SBR58GW5', 'M79OO9D7VZI3ALI', 4, 234, NULL, 936, 956, 1);
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
UPDATE `shipping_info` SET `customer_id` = 'P8SUNHABSBFDOIX', `order_id` = 'KUFG5YWHWQ5RWQV', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('KUFG5YWHWQ5RWQV', 'P8SUNHABSBFDOIX', '24-04-2018', '1612.8', 1014, '3824.0', '100', 'M79OO9D7VZI3ALI', 'something', 0, '1612.8', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('NJ19WS93Y5HKMJB', 'KUFG5YWHWQ5RWQV', '54546733', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, '50', 150, 0, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('EAHVSPWMIBBVPTM', 'KUFG5YWHWQ5RWQV', 9, 'H5MQN4NXJBSDX4L', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('16RD93VH55HGSLG', 'KUFG5YWHWQ5RWQV', 9, '54546733', 'H5MQN4NXJBSDX4L', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('8S65992DJQZHKC7', 'KUFG5YWHWQ5RWQV', 12, '52C2SKCKGQY6Q9J', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('D9ODB4VR73E2CMH', 'KUFG5YWHWQ5RWQV', 12, '54546733', '52C2SKCKGQY6Q9J', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('INRMSCW16D36C2O', 'KUFG5YWHWQ5RWQV', 10.5, '5SN9PRWPN131T4V', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('8J8QQG8PSBWJ2VL', 'KUFG5YWHWQ5RWQV', 10.5, '54546733', '5SN9PRWPN131T4V', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('PJA67TBXG66RHZK', 'KUFG5YWHWQ5RWQV', '45429772', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 3, 150, '100', 450, 0, 1);
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
UPDATE `shipping_info` SET `customer_id` = 'P8SUNHABSBFDOIX', `order_id` = 'J5ZUN9WT87JC7YK', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('J5ZUN9WT87JC7YK', 'P8SUNHABSBFDOIX', '24-04-2018', '1612.8', 1015, '3824.0', '100', 'M79OO9D7VZI3ALI', 'something', 0, '1612.8', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('WTZZS4BHQ9B4X4Z', 'J5ZUN9WT87JC7YK', '54546733', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, '50', 150, 0, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('F42VLIXU6S4E89D', 'J5ZUN9WT87JC7YK', 9, 'H5MQN4NXJBSDX4L', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('IEJ4ORX5UX4SGYA', 'J5ZUN9WT87JC7YK', 9, '54546733', 'H5MQN4NXJBSDX4L', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('YIH7YGK2MASLDGA', 'J5ZUN9WT87JC7YK', 12, '52C2SKCKGQY6Q9J', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('1WXN2O7XXI8RCQG', 'J5ZUN9WT87JC7YK', 12, '54546733', '52C2SKCKGQY6Q9J', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('8I7VT59XTIQNSAY', 'J5ZUN9WT87JC7YK', 10.5, '5SN9PRWPN131T4V', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('EPOV99GMNGSAHXF', 'J5ZUN9WT87JC7YK', 10.5, '54546733', '5SN9PRWPN131T4V', 'DZT2RNVHGWCVQAS', '24-04-2018');
UPDATE `order_details` SET quantity = quantity+3, total_price = total_price+450
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `product_id` = '54546733'
AND `variant_id` = 'DZT2RNVHGWCVQAS';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+27
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+27
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+36
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `order_tax_col_details` SET amount = amount+36
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` IS NULL
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+31.5
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` = '5SN9PRWPN131T4V';
UPDATE `order_tax_col_details` SET amount = amount+31.5
WHERE `order_id` = 'J5ZUN9WT87JC7YK'
AND `tax_id` = '5SN9PRWPN131T4V'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
UPDATE `customer_information` SET `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
UPDATE `shipping_info` SET `customer_id` = 'P8SUNHABSBFDOIX', `order_id` = 'LZZSPLP9X72A8FR', `customer_name` = 'robin', `customer_short_address` = 'Dhaka,Chattagam,Bangladesh,1216', `customer_address_1` = 'dhaka 1216', `customer_mobile` = '01625878789', `customer_email` = 'mostafa@fgmial.com', `city` = 'Dhaka', `state` = 'Chattagam', `country` = '18', `zip` = '1216', `company` = ''
WHERE `customer_id` = 'P8SUNHABSBFDOIX';
INSERT INTO `order` (`order_id`, `customer_id`, `date`, `total_amount`, `order`, `total_discount`, `service_charge`, `store_id`, `details`, `paid_amount`, `due_amount`, `status`) VALUES ('LZZSPLP9X72A8FR', 'P8SUNHABSBFDOIX', '24-04-2018', '1612.8', 1016, '3824.0', '100', 'M79OO9D7VZI3ALI', 'something', 0, '1612.8', 1);
INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('B1B24CHN3L2P1UL', 'LZZSPLP9X72A8FR', '54546733', 'DZT2RNVHGWCVQAS', 'M79OO9D7VZI3ALI', 1, 150, '50', 150, 0, 1);
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('1BF8SRFHRQ9I33T', 'LZZSPLP9X72A8FR', 9, 'H5MQN4NXJBSDX4L', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('TJ5UPARYK49VK6I', 'LZZSPLP9X72A8FR', 9, '54546733', 'H5MQN4NXJBSDX4L', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('FA8U6SI3ZQONG7Z', 'LZZSPLP9X72A8FR', 12, '52C2SKCKGQY6Q9J', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('AGQ6DHHFRI1GUZF', 'LZZSPLP9X72A8FR', 12, '54546733', '52C2SKCKGQY6Q9J', 'DZT2RNVHGWCVQAS', '24-04-2018');
INSERT INTO `order_tax_col_summary` (`order_tax_col_id`, `order_id`, `tax_amount`, `tax_id`, `date`) VALUES ('IDXBBQRR2SHDHTI', 'LZZSPLP9X72A8FR', 10.5, '5SN9PRWPN131T4V', '24-04-2018');
INSERT INTO `order_tax_col_details` (`order_tax_col_de_id`, `order_id`, `amount`, `product_id`, `tax_id`, `variant_id`, `date`) VALUES ('9RUTYOY1NF6WVPR', 'LZZSPLP9X72A8FR', 10.5, '54546733', '5SN9PRWPN131T4V', 'DZT2RNVHGWCVQAS', '24-04-2018');
UPDATE `order_details` SET quantity = quantity+3, total_price = total_price+450
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `product_id` = '54546733'
AND `variant_id` = 'DZT2RNVHGWCVQAS';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+27
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = 'H5MQN4NXJBSDX4L';
UPDATE `order_tax_col_details` SET amount = amount+27
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = 'H5MQN4NXJBSDX4L'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+36
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = '52C2SKCKGQY6Q9J';
UPDATE `order_tax_col_details` SET amount = amount+36
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = '52C2SKCKGQY6Q9J'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
UPDATE `order_tax_col_summary` SET tax_amount = tax_amount+31.5
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = '5SN9PRWPN131T4V';
UPDATE `order_tax_col_details` SET amount = amount+31.5
WHERE `order_id` = 'LZZSPLP9X72A8FR'
AND `tax_id` = '5SN9PRWPN131T4V'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '54546733';
INSERT INTO `product_review` (`product_id`, `reviewer_id`, `comments`, `rate`, `status`) VALUES ('67296524', '2', 'Nice', '4', '1');
INSERT INTO `invoice` (`invoice_id`, `order_id`, `customer_id`, `store_id`, `user_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `service_charge`, `paid_amount`, `due_amount`, `status`) VALUES ('DVYZIK81M8GA5AR', 'G8PSBWJ2VLPJA67', '1MB8S9H3LRD2OZX', 'M79OO9D7VZI3ALI', '', '16-04-2018', '10000', 1040, '200', '200', '100', '10000', '0', '1');
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `order_no`, `date`, `amount`, `status`) VALUES ('ZRPPTXYF5H2HIPE', '1MB8S9H3LRD2OZX', 'DVYZIK81M8GA5AR', 'G8PSBWJ2VLPJA67', '16-04-2018', '10000', 1);
UPDATE `order` SET `status` = '2'
WHERE `order_id` = 'G8PSBWJ2VLPJA67';
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('Z8IZJY8C8ZMCNZ6', 'DVYZIK81M8GA5AR', '91749131', '7LKAJ3R5QHJXLRG', '123456', '2', '200', '444', '2000', '10', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('IV6LSHBBMNJ64VM', 'DVYZIK81M8GA5AR', '91749131', 'FHDMR9AOQ7ZMJ8F', '123456', '2', '200', '444', '2000', '10', '1');
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('GKAV11IUAYLUZC6', 'DVYZIK81M8GA5AR', '63623141', 'ED8RNPPKLZAJDIS', '123456', '1', '100', '123', '1000', '5', '1');
INSERT INTO `tax_collection_summary` (`tax_collection_id`, `invoice_id`, `tax_id`, `tax_amount`, `date`) VALUES ('45EI75QZT2J8MYX', 'DVYZIK81M8GA5AR', '52C2SKCKGQY6Q9J', '34', '16-04-2018');
INSERT INTO `tax_collection_summary` (`tax_collection_id`, `invoice_id`, `tax_id`, `tax_amount`, `date`) VALUES ('V3DX86JV2G3G38H', 'DVYZIK81M8GA5AR', '5SN9PRWPN131T4V', '41.5', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('3IHPWTP2JQ7OBL3', 'DVYZIK81M8GA5AR', '63623141', 'ED8RNPPKLZAJDIS', '52C2SKCKGQY6Q9J', '2', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('ADLQTBVBYA3VAKO', 'DVYZIK81M8GA5AR', '91749131', '7LKAJ3R5QHJXLRG', '5SN9PRWPN131T4V', '20', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('KKZ11B2PNP5RI13', 'DVYZIK81M8GA5AR', '91749131', 'FHDMR9AOQ7ZMJ8F', '52C2SKCKGQY6Q9J', '16', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('SGEOHY96LSOTROZ', 'DVYZIK81M8GA5AR', '63623141', 'ED8RNPPKLZAJDIS', '5SN9PRWPN131T4V', '1.5', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('U29IH7D6CKYEU99', 'DVYZIK81M8GA5AR', '91749131', '7LKAJ3R5QHJXLRG', '52C2SKCKGQY6Q9J', '16', '16-04-2018');
INSERT INTO `tax_collection_details` (`tax_col_de_id`, `invoice_id`, `product_id`, `variant_id`, `tax_id`, `amount`, `date`) VALUES ('VJYIAHDQ52MERPX', 'DVYZIK81M8GA5AR', '91749131', 'FHDMR9AOQ7ZMJ8F', '5SN9PRWPN131T4V', '20', '16-04-2018');
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.4/my-assets/pdf/CASUJ8JWERBNLAN.pdf'
WHERE `order_id` = 'CASUJ8JWERBNLAN';
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.4/my-assets/pdf/G8PSBWJ2VLPJA67.pdf'
WHERE `order_id` = 'G8PSBWJ2VLPJA67';
UPDATE `order` SET `file_path` = 'http://localhost/style_dunia/v1.4/my-assets/pdf/G8PSBWJ2VLPJA67.pdf'
WHERE `order_id` = 'G8PSBWJ2VLPJA67';
INSERT INTO `language` (`phrase`) VALUES ('client_id');
UPDATE `language` SET `english` = 'Client ID'
WHERE `id` = '890';
UPDATE `payment_gateway` SET `paypal_email` = 'jahangirmahi1-facilitator@gmail.com', `paypal_client_id` = '123', `currency` = 'USD', `status` = '1'
WHERE `id` = '3';
UPDATE `payment_gateway` SET `paypal_email` = 'jahangirmahi1-facilitator@gmail.com', `paypal_client_id` = '123456', `currency` = 'USD', `status` = '1'
WHERE `id` = '3';
INSERT INTO `language` (`phrase`) VALUES ('app_qr_code');
UPDATE `language` SET `english` = 'App QR Code'
WHERE `id` = '891';
UPDATE `language` SET `english` = 'App QR Code'
WHERE `id` = '891';
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('C1VHR4A446BWBXZ', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`, `password`) VALUES ('RUTKY7ICB59X447', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com', 'bbe587948a2490934834340b1b4c1643');
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('RUTKY7ICB59X447', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`, `password`) VALUES ('YR1TQR3ND2ZY75U', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com', 'bbe587948a2490934834340b1b4c1643');
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('YR1TQR3ND2ZY75U', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com');
INSERT INTO `customer_information` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`, `password`) VALUES ('JNJ2V7ZRSV3VO2V', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com', 'bbe587948a2490934834340b1b4c1643');
INSERT INTO `shipping_info` (`customer_id`, `customer_name`, `first_name`, `last_name`, `customer_short_address`, `customer_address_1`, `customer_address_2`, `city`, `state`, `country`, `zip`, `company`, `customer_mobile`, `customer_email`) VALUES ('JNJ2V7ZRSV3VO2V', 'test test', 'test', 'test', 'Dhaka,Niederosterreich,Austria,1208', '387 South Tejgaon', '98 green road', 'Dhaka', 'Niederosterreich', '14', '1208', 'student', '34523523542354', 'aBNN@gmail.com');
UPDATE `language` SET `english` = 'sdfasfd'
WHERE `id` = '582';
UPDATE `language` SET `english` = 'sadfas'
WHERE `id` = '582';
UPDATE `language` SET `bangla` = 'asdfas'
WHERE `id` = '582';
UPDATE `language` SET `bangla` = '45454'
WHERE `id` = '582';
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'bangla', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'bangla', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'bangla', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
INSERT INTO `language` (`phrase`) VALUES ('january');
INSERT INTO `language` (`phrase`) VALUES ('february');
INSERT INTO `language` (`phrase`) VALUES ('march');
INSERT INTO `language` (`phrase`) VALUES ('april');
INSERT INTO `language` (`phrase`) VALUES ('may');
INSERT INTO `language` (`phrase`) VALUES ('june');
INSERT INTO `language` (`phrase`) VALUES ('july');
INSERT INTO `language` (`phrase`) VALUES ('august');
INSERT INTO `language` (`phrase`) VALUES ('september');
INSERT INTO `language` (`phrase`) VALUES ('octobor');
INSERT INTO `language` (`phrase`) VALUES ('november');
INSERT INTO `language` (`phrase`) VALUES ('december');
UPDATE `language` SET `english` = 'December'
WHERE `id` = '901';
UPDATE `language` SET `english` = 'February'
WHERE `id` = '891';
UPDATE `language` SET `english` = 'January'
WHERE `id` = '890';
UPDATE `language` SET `english` = 'July'
WHERE `id` = '896';
UPDATE `language` SET `english` = 'June'
WHERE `id` = '895';
UPDATE `language` SET `english` = 'Language'
WHERE `id` = '3';
UPDATE `language` SET `english` = 'March'
WHERE `id` = '892';
UPDATE `language` SET `english` = 'May'
WHERE `id` = '894';
UPDATE `language` SET `english` = 'November'
WHERE `id` = '900';
UPDATE `language` SET `english` = 'Octobor'
WHERE `id` = '899';
UPDATE `language` SET `english` = 'September'
WHERE `id` = '898';
UPDATE `language` SET `english` = 'April'
WHERE `id` = '893';
UPDATE `language` SET `english` = 'August'
WHERE `id` = '897';
UPDATE `unit` SET `unit_name` = 'Kg', `unit_short_name` = 'Kilogram'
WHERE `unit_id` = 'FUSLEJJZ6542OZ1';
UPDATE `unit` SET `unit_name` = 'Kg', `unit_short_name` = 'sadfasfas'
WHERE `unit_id` = 'FUSLEJJZ6542OZ1';
UPDATE `soft_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/be1df0f6831a726a5921f0f46911e04e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/3663e1e2b0ced836724d7fedd4c17e14.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/36555b06f1066e36479f70b8336aafc7.png', `footer_text` = 'Developed by bdtask', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `language` SET `english` = 'About us'
WHERE `id` = '582';
INSERT INTO `language` (`phrase`) VALUES ('pay_with');
INSERT INTO `language` (`phrase`) VALUES ('please_enter_email');
INSERT INTO `language` (`phrase`) VALUES ('subscribe_successfully');
INSERT INTO `language` (`phrase`) VALUES ('failed');
UPDATE `language` SET `english` = 'Please enter email !'
WHERE `id` = '903';
UPDATE `language` SET `english` = 'Subscribe successfully.'
WHERE `id` = '904';
UPDATE `language` SET `english` = 'Failed !'
WHERE `id` = '905';
INSERT INTO `language` (`phrase`) VALUES ('please_login_first');
INSERT INTO `language` (`phrase`) VALUES ('product_added_to_wishlist');
INSERT INTO `language` (`phrase`) VALUES ('product_already_exists_in_wishlist');
UPDATE `language` SET `english` = 'Please login first !'
WHERE `id` = '906';
UPDATE `language` SET `english` = 'Please login first !'
WHERE `id` = '906';
UPDATE `language` SET `english` = 'Please login first !'
WHERE `id` = '906';
UPDATE `language` SET `english` = 'Product added to wishlist.'
WHERE `id` = '907';
UPDATE `language` SET `english` = 'Product already exists in wishlist !'
WHERE `id` = '908';
INSERT INTO `language` (`phrase`) VALUES ('please_keep_quantity_up_to_zero');
INSERT INTO `language` (`phrase`) VALUES ('please_select_product_size');
INSERT INTO `language` (`phrase`) VALUES ('please_fill_up_all_required_field');
INSERT INTO `language` (`phrase`) VALUES ('please_select_country');
UPDATE `language` SET `english` = 'Pay with'
WHERE `id` = '902';
UPDATE `language` SET `english` = 'Please fill up all required field !'
WHERE `id` = '911';
UPDATE `language` SET `english` = 'Please keep quantity up to zero !'
WHERE `id` = '909';
UPDATE `language` SET `english` = 'Please select country !'
WHERE `id` = '912';
UPDATE `language` SET `english` = 'Please select product size !'
WHERE `id` = '910';
INSERT INTO `language` (`phrase`) VALUES ('client_id');
INSERT INTO `language` (`phrase`) VALUES ('app_qr_code');
UPDATE `language` SET `english` = 'App QR Code'
WHERE `id` = '914';
UPDATE `language` SET `english` = 'Client ID'
WHERE `id` = '913';
INSERT INTO `product_purchase` (`purchase_id`, `invoice_no`, `supplier_id`, `store_id`, `wearhouse_id`, `grand_total_amount`, `purchase_date`, `purchase_details`, `user_id`, `status`) VALUES ('BZDBHX8GTU717YR', '3453453', 'AOAHQFNWQLW6SW94E3YI', 'ATZK6K1KJ4PQOMH', '', '444.00', '05-13-2018', '', '1', 1);
INSERT INTO `supplier_ledger` (`transaction_id`, `purchase_id`, `invoice_no`, `supplier_id`, `amount`, `date`, `description`, `status`) VALUES ('4N9TAXY2MBZ7SHO', 'BZDBHX8GTU717YR', '3453453', 'AOAHQFNWQLW6SW94E3YI', '444.00', '05-13-2018', '', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `wearhouse_id`, `store_id`, `quantity`, `rate`, `total_amount`, `variant_id`, `status`) VALUES ('UVMVTCKVUFGJMOY', 'BZDBHX8GTU717YR', '23491344', '', 'ATZK6K1KJ4PQOMH', '2', '222', '444.00', 'DZT2RNVHGWCVQAS', 1);
INSERT INTO `transfer` (`transfer_id`, `purchase_id`, `store_id`, `product_id`, `variant_id`, `date_time`, `quantity`, `status`) VALUES ('8U6ESBIGKLSBELN', 'BZDBHX8GTU717YR', 'ATZK6K1KJ4PQOMH', '23491344', 'DZT2RNVHGWCVQAS', '05-13-2018', '2', 3);
UPDATE `customer_information` SET `customer_name` = 'mobin', `customer_mobile` = '234342', `customer_email` = 'jahangirmahi1@gmail.com', `customer_short_address` = '    ', `customer_address_1` = '387 South Tejgaon', `customer_address_2` = '387 South Tejgaon', `city` = '', `state` = '', `country` = '', `zip` = '', `status` = 1
WHERE `customer_id` = '14DREFQSFXB84LH';
INSERT INTO `product_purchase` (`purchase_id`, `invoice_no`, `supplier_id`, `store_id`, `wearhouse_id`, `grand_total_amount`, `purchase_date`, `purchase_details`, `user_id`, `status`) VALUES ('39RJ5BRTLZOMVRL', '3465346346', 'AOAHQFNWQLW6SW94E3YI', 'ATZK6K1KJ4PQOMH', '', '4000.00', '05-13-2018', '', '1', 1);
INSERT INTO `supplier_ledger` (`transaction_id`, `purchase_id`, `invoice_no`, `supplier_id`, `amount`, `date`, `description`, `status`) VALUES ('2PN4UJZC66TUUXP', '39RJ5BRTLZOMVRL', '3465346346', 'AOAHQFNWQLW6SW94E3YI', '4000.00', '05-13-2018', '', 1);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `wearhouse_id`, `store_id`, `quantity`, `rate`, `total_amount`, `variant_id`, `status`) VALUES ('PYPHKCSMH72727V', '39RJ5BRTLZOMVRL', '23491344', '', 'ATZK6K1KJ4PQOMH', '10', '400', '4000.00', 'DZT2RNVHGWCVQAS', 1);
UPDATE `transfer` SET quantity = quantity+10, status = 5
WHERE `store_id` = 'ATZK6K1KJ4PQOMH'
AND `variant_id` = 'DZT2RNVHGWCVQAS'
AND `product_id` = '23491344';
UPDATE `product_information` SET `product_name` = '  Smartphone Wireless', `supplier_id` = 'U2YGTW65SSR7U8ALEP6M', `category_id` = 'MRD3AB9ELBYIM3U', `price` = '5000', `supplier_price` = '2500', `unit` = '49PW2CURUAVO1X8', `product_model` = 'LKe01', `product_details` = '<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.<br></p>', `brand_id` = '', `variants` = 'DZT2RNVHGWCVQAS,C2YDWB5SBR58GW5,GQ3DZ3N6QB2URPY', `type` = 'N/A', `best_sale` = '0', `onsale` = '1', `onsale_price` = '4500', `invoice_details` = '', `review` = '<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.<br></p>', `description` = '<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.<br></p>', `tag` = 'ghghjpo', `specification` = '<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.<br></p>', `image_large_details` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/product/530b5a221a8307bfc03ea600e25f8dad.jpg', `image_thumb` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/product/thumb/530b5a221a8307bfc03ea600e25f8dad.jpg', `status` = 1
WHERE `product_id` = '53228794';
INSERT INTO `customer_ledger` (`transaction_id`, `customer_id`, `invoice_no`, `date`, `amount`, `status`) VALUES ('JE8J47BMIBIG6T1', 'JN8T5OQB4SC53NV', 'F4THQXKF11LSEJU', '05-13-2018', '1070.00', 1);
INSERT INTO `invoice` (`invoice_id`, `customer_id`, `date`, `total_amount`, `invoice`, `total_discount`, `invoice_discount`, `user_id`, `store_id`, `paid_amount`, `due_amount`, `service_charge`, `invoice_details`, `status`) VALUES ('F4THQXKF11LSEJU', 'JN8T5OQB4SC53NV', '05-13-2018', '1070.00', 1017, '420.00', 420, '1', 'ATZK6K1KJ4PQOMH', '', '1070.00', '', NULL, 1);
INSERT INTO `invoice_details` (`invoice_details_id`, `invoice_id`, `product_id`, `variant_id`, `store_id`, `quantity`, `rate`, `supplier_rate`, `total_price`, `discount`, `status`) VALUES ('S3HL2Q8F22O85IY', 'F4THQXKF11LSEJU', '23491344', 'DZT2RNVHGWCVQAS', 'ATZK6K1KJ4PQOMH', '1', '700', '450', '700', '210', 1);
UPDATE `invoice_details` SET quantity = quantity+1, total_price = total_price+790
WHERE `invoice_id` = 'F4THQXKF11LSEJU'
AND `product_id` = '23491344'
AND `variant_id` = 'DZT2RNVHGWCVQAS';
DELETE FROM `product_purchase`
WHERE `purchase_id` = 'BZDBHX8GTU717YR';
INSERT INTO `product_purchase` (`purchase_id`, `invoice_no`, `supplier_id`, `store_id`, `wearhouse_id`, `grand_total_amount`, `purchase_date`, `purchase_details`, `user_id`, `status`) VALUES ('BZDBHX8GTU717YR', '3453453', 'AOAHQFNWQLW6SW94E3YI', 'ATZK6K1KJ4PQOMH', '', '1794.00', '05-13-2018', '', '1', 1);
UPDATE `supplier_ledger` SET `invoice_no` = '3453453', `supplier_id` = 'AOAHQFNWQLW6SW94E3YI', `amount` = '1794.00', `date` = '05-13-2018', `description` = '', `status` = 1
WHERE `purchase_id` = 'BZDBHX8GTU717YR';
DELETE FROM `product_purchase_details`
WHERE `purchase_id` = 'BZDBHX8GTU717YR';
DELETE FROM `transfer`
WHERE `purchase_id` = 'BZDBHX8GTU717YR';
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `store_id`, `wearhouse_id`, `variant_id`, `quantity`, `rate`, `total_amount`, `status`) VALUES ('HJGJ6NEDU2V7EHK', 'BZDBHX8GTU717YR', '23491344', 'ATZK6K1KJ4PQOMH', '', 'DZT2RNVHGWCVQAS', '2', '222', '444', 1);
INSERT INTO `transfer` (`transfer_id`, `purchase_id`, `store_id`, `product_id`, `variant_id`, `date_time`, `quantity`, `status`) VALUES ('DEYPOR41JYZQRY9', 'BZDBHX8GTU717YR', 'ATZK6K1KJ4PQOMH', '23491344', 'DZT2RNVHGWCVQAS', '05-13-2018', '2', 3);
INSERT INTO `product_purchase_details` (`purchase_detail_id`, `purchase_id`, `product_id`, `store_id`, `wearhouse_id`, `variant_id`, `quantity`, `rate`, `total_amount`, `status`) VALUES ('JPAXO7UOTK3JCO1', 'BZDBHX8GTU717YR', '23491344', 'ATZK6K1KJ4PQOMH', '', 'C2YDWB5SBR58GW5', '3', '250', '1350.00', 1);
INSERT INTO `transfer` (`transfer_id`, `purchase_id`, `store_id`, `product_id`, `variant_id`, `date_time`, `quantity`, `status`) VALUES ('5RT4JE1CDXF6OMX', 'BZDBHX8GTU717YR', 'ATZK6K1KJ4PQOMH', '23491344', 'C2YDWB5SBR58GW5', '05-13-2018', '3', 3);
UPDATE `users` AS `a`,`user_login` AS `b` SET `a`.`first_name` = 'BomberDv', `a`.`last_name` = 'Admin', `b`.`username` = 'admin@bomberdv.com',`a`.`logo` = 'http://localhost/tronika/assets/dist/img/profile_picture/82c3c2e2a28d5855001acffa4894d8f3.png' WHERE `a`.`user_id` = '1' AND `a`.`user_id` = `b`.`user_id`;
UPDATE `web_setting` SET `logo` = 'http://isshue.bdtask.com/isshue-v1.4/my-assets/image/logo/b33387855f93dc15c7c5f605f1c96a7f.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.4/my-assets/image/logo/e7e3bf56c4349be2b0e14c356dbad273.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/e85a60dd6f5b4d2e1c3b0960d9fa2db0.png', `footer_logo` = NULL, `footer_text` = 'Copy Right @ <a href=\'https://www.bomberdv.com/\' target=\'_blank\'>TRONIKA</a>', `map_api_key` = 'AIzaSyBGwh3ShY_W1hMms1wmwlHK3hpInhExn3o', `map_latitude` = '23.756107', `map_langitude` = '90.387196'
WHERE `setting_id` = '1';
UPDATE `web_setting` SET `logo` = 'http://localhost/tronika/my-assets/image/logo/420f0e9ed4f6bded91d5841b70078a3e.png', `invoice_logo` = 'http://isshue.bdtask.com/isshue-v1.4/my-assets/image/logo/e7e3bf56c4349be2b0e14c356dbad273.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/e85a60dd6f5b4d2e1c3b0960d9fa2db0.png', `footer_logo` = NULL, `footer_text` = 'Copy Right @ <a href=\'https://www.bomberdv.com/\' target=\'_blank\'>TRONIKA</a>', `map_api_key` = 'AIzaSyBGwh3ShY_W1hMms1wmwlHK3hpInhExn3o', `map_latitude` = '23.756107', `map_langitude` = '90.387196'
WHERE `setting_id` = '1';
UPDATE `web_setting` SET `logo` = 'http://localhost/tronika/my-assets/image/logo/420f0e9ed4f6bded91d5841b70078a3e.png', `invoice_logo` = 'http://localhost/tronika/my-assets/image/logo/7ba41abae248994a23ca576bc5822323.png', `favicon` = 'http://isshue.bdtask.com/isshue-v1.1/my-assets/image/logo/e85a60dd6f5b4d2e1c3b0960d9fa2db0.png', `footer_logo` = 'http://localhost/tronika/my-assets/image/logo/5b970837c4b030fd5a6ba1aaec3188f7.png', `footer_text` = 'Copy Right @ <a href=\'https://www.bomberdv.com/\' target=\'_blank\'>TRONIKA</a>', `map_api_key` = 'AIzaSyBGwh3ShY_W1hMms1wmwlHK3hpInhExn3o', `map_latitude` = '23.756107', `map_langitude` = '90.387196'
WHERE `setting_id` = '1';
UPDATE `company_information` SET `company_id` = 'NOILG8EGCRXXBWUEUQBM', `company_name` = 'TRONIKA', `email` = 'admin@tronika.co.id', `address` = 'Jl. Jembatan Besi No. 33 Pusat Bisnis Latumenten 33 Jembatan Besi Tambora Jakarta Barat DKI Jakarta, RT.13/RW.1, Jemb. Besi, Tambora, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11320', `mobile` = '+62', `website` = 'https://www.tronika.co.id', `status` = 1
WHERE `company_id` = 'NOILG8EGCRXXBWUEUQBM';
ALTER TABLE `language`
	ADD `indonesia` TEXT;
UPDATE `soft_setting` SET `logo` = 'http://localhost/tronika/my-assets/image/logo/a3c794ead165088918b888a0024a0753.png', `invoice_logo` = 'http://localhost/tronika/my-assets/image/logo/3d64925e9bad9b562939e3dd72e36b5b.png', `favicon` = 'http://localhost/tronika/my-assets/image/logo/a90343d0e0d83502be2b0ac1a79723b1.png', `footer_text` = 'Developed by BomberDV', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
UPDATE `soft_setting` SET `logo` = 'http://localhost/tronika/my-assets/image/logo/19975c9de1fbda005b9d9c5d45b3c064.png', `invoice_logo` = 'http://localhost/tronika/my-assets/image/logo/eb0dfdb946f6eba5baac1aa0a613d03a.png', `favicon` = 'http://localhost/tronika/my-assets/image/logo/a90343d0e0d83502be2b0ac1a79723b1.png', `footer_text` = 'Developed by BomberDV', `language` = 'english', `rtr` = '0', `captcha` = '1', `site_key` = '1233', `secret_key` = '1233'
WHERE `setting_id` = 1;
DELETE FROM `currency_info`
WHERE `currency_id` = '8UD4F1XGKHV7UDX';
DELETE FROM `currency_info`
WHERE `currency_id` = 'JFQT84SU2R9BTCM';
DELETE FROM `currency_info`
WHERE `currency_id` = '5O2VW2IFRBF1ULM';
INSERT INTO `currency_info` (`currency_id`, `currency_name`, `currency_icon`, `currency_position`, `convertion_rate`, `default_status`) VALUES ('YZ8UK4KUUJL8PW3', 'IDR', 'Rp.', '0', '0.00014', '0');
UPDATE `currency_info` SET `currency_name` = 'USD', `currency_icon` = '$', `currency_position` = '0', `convertion_rate` = '1', `default_status` = '0'
WHERE `currency_id` = 'ZFUXHWW83EM6QGP';
UPDATE `currency_info` SET `currency_name` = 'IDR', `currency_icon` = 'Rp.', `currency_position` = '0', `convertion_rate` = '0.00014', `default_status` = '1'
WHERE `currency_id` = 'YZ8UK4KUUJL8PW3';
