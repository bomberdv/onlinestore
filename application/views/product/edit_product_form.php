<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Edit Product Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('product_edit') ?></h1>
            <small><?php echo display('edit_your_product') ?></small>
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('product') ?></a></li>
                <li class="active"><?php echo display('product_edit') ?></li>
            </ol>
        </div>
    </section>

    <section class="content">
        <!-- Alert Message -->
        <?php
            $message = $this->session->userdata('message');
            if (isset($message)) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('message');
            }
            $error_message = $this->session->userdata('error_message');
            if (isset($error_message)) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('error_message');
            }
        ?>

        <!-- Product edit -->
        <div class="row">
            <div class="col-sm-12 col-md-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('product_edit') ?></h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Cproduct/product_update',array('class' => 'form-vertical', 'id' => 'commentForm','name' => 'product_update'))?>
                    <div class="panel-body">
                        <div id="rootwizard">
                            <div class="navbar">
                                <div class="navbar-inner form-wizard">
                                    <ul class="nav nav-pills nav-justified steps">
                                        <li>
                                            <a href="#tab1" data-toggle="tab" class="step" aria-expanded="true">
                                                <span class="number"> <?php echo display('1')?> </span>
                                                <span class="desc"><?php echo display('item_information')?> </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#tab2" data-toggle="tab" class="step" aria-expanded="true">
                                                <span class="number"> <?php echo display('2')?> </span>
                                                <span class="desc"><?php echo display('web_store')?></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#tab3" data-toggle="tab" class="step" aria-expanded="true">
                                                <span class="number"> <?php echo display('3')?> </span>
                                                <span class="desc"><?php echo display('price')?></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div id="bar" class="progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
                            </div>
                            <div class="tab-content">
                                <div class="tab-pane" id="tab1">

                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label for="product_name" class="col-sm-3 col-form-label"><?php echo display('product_name') ?> <span class="color-red">*</span></label>
                                                <div class="col-sm-9"> 
                                                    <input class="form-control" name="product_name" type="text" id="product_name" placeholder="<?php echo display('product_name') ?>" value="{product_name}" required>
                                                    <input type="hidden" name="product_id" value="{product_id}"/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                            <div class="form-group row">
                                                <label for="category_id" class="col-sm-3 col-form-label"><?php echo display('category') ?></label>
                                                <div class="col-sm-9">
                                                    <select class="form-control select2" id="category_id" name="category_id" style="width: 100%">
                                                        {category_list}
                                                        <option value="{category_id}">{category_name} </option>
                                                        {/category_list}
                                                        <?php if ($category_selected) { ?>
                                                        {category_selected}
                                                        <option selected value="{category_id}">{category_name} </option>
                                                        {/category_selected}
                                                        <?php  }else{ ?>
                                                        <option selected value="0"><?php echo display('category_not_selected')?></option>
                                                        <?php  }  ?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-sm-4">
                                           <div class="form-group row">
                                                <label for="image_thumb" class="col-sm-3 col-form-label"><?php echo display('image') ?></label>
                                                <div class="col-sm-9">
                                                    <input type="file" name="image_thumb" class="form-control">
                                                    <img class="img img-responsive text-center" src="{image_thumb}" height="80" width="80" style="padding: 5px;">
                                                     <input type="hidden" value="{image_thumb}" name="old_thumb_image">
                                                     <input type="hidden" value="{image_large_details}" name="old_img_lrg">
                                                </div>
                                            </div> 
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label for="description" class="col-sm-2 col-form-label"><?php echo display('details') ?></label>
                                                <div class="col-sm-10">
                                                    <textarea class="form-control summernote" name="description" id="description" rows="3" >{product_details}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label for="invoice_details" class="col-sm-2 col-form-label"><?php echo display('invoice_details') ?></label>
                                                <div class="col-sm-10">
                                                    <textarea class="form-control" name="invoice_details" id="invoice_details" rows="3" placeholder="<?php echo display('invoice_details') ?>">{invoice_details}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tab2">

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="unit" class="col-sm-3 col-form-label"><?php echo display('unit') ?></label>
                                                <div class="col-sm-9">
                                                    <select class="form-control select2" id="unit" name="unit" style="width: 100%">
                                                        <option value=""><?php echo display('select_one') ?></option>
                                                        {unit_list}
                                                        <option value="{unit_id}">{unit_name}</option>
                                                        {/unit_list}
                                                        <?php if ($unit_selected) { ?>
                                                        {unit_selected}
                                                        <option selected value="{unit_id}">{unit_name} </option>
                                                        {/unit_selected}
                                                        <?php }else{ ?>
                                                        <option value=""><?php echo display('select_one') ?></option>
                                                        <?php } ?>

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                           <div class="form-group row">
                                                <label for="brand" class="col-sm-3 col-form-label"><?php echo display('brand') ?></label>
                                                <div class="col-sm-9">
                                                    <select class="form-control select2" id="brand" name="brand" style="width: 100%">
                                                       <option value=""><?php echo display('select_one') ?></option>
                                                        {brand_list}
                                                        <option value="{brand_id}">{brand_name}</option>
                                                        {/brand_list}
                                                        <?php if ($brand_selected) { ?>
                                                        {brand_selected}
                                                        <option selected value="{brand_id}">{brand_name} </option>
                                                        {/brand_selected}
                                                        <?php }else{ ?>
                                                        <option value=""><?php echo display('select_one') ?></option>
                                                        <?php } ?>
                                                </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="type" class="col-sm-3 col-form-label"><?php echo display('type') ?> </label>
                                                <div class="col-sm-9">
                                                    <input type="text" name="type" class="form-control" id="type" value="{type}" placeholder="<?php echo display('type') ?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="tag" class="col-sm-3 col-form-label"><?php echo display('tag') ?></label>
                                                <div class="col-md-9">
                                                    <input type="text" value="{tag}" data-role="tagsinput" name="tag">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="onsale" class="col-sm-3 col-form-label"><?php echo display('onsale') ?></label>
                                                <div class="col-md-9">
                                                    <select class="form-control select2" id="onsale" name="onsale" style="width: 100%">
                                                        <option value=""><?php echo display('select_one') ?></option>
                                                        <option value="1" <?php if ($onsale == 1) {
                                                            echo "selected";}?>><?php echo display('yes') ?></option>
                                                        <option value="0" <?php if ($onsale == 0) {
                                                            echo "selected";}?>><?php echo display('no') ?></option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row onsale_price" style="<?php if ($onsale == 0) { echo "display: none"; }?>">
                                                <label for="onsale_price" class="col-sm-3 col-form-label"><?php echo display('onsale_price')?> <i class="text-danger">*</i></label>
                                                <div class="col-md-9">
                                                    <input class="form-control text-right" name="onsale_price" type="number" required="" placeholder="<?php echo display('onsale_price') ?>" min="0" id="onsale_price" value="{onsale_price}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="best_sale" class="col-sm-3 col-form-label"><?php echo display('best_sale') ?></label>
                                                <div class="col-md-9">
                                                    <select class="form-control select2" id="best_sale" name="best_sale" style="width: 100%">
                                                        <option value=""><?php echo display('select_one') ?></option>
                                                        <option value="1" <?php if ($best_sale == 1) {
                                                            echo "selected";}?>><?php echo display('yes') ?></option>
                                                        <option value="0" <?php if ($best_sale == 0) {
                                                            echo "selected";}?>><?php echo display('no') ?></option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>                                        

                                        <div class="col-sm-6">
                            
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="content1" class="col-sm-3 col-form-label"><?php echo display('review') ?></label>
                                                <div class="col-md-9">
                                                    <textarea name="review" class="form-control summernote" placeholder="<?php echo display('review')?>" id="content1" required row="3">{review}</textarea>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group row">
                                                <label for="content2" class="col-sm-3 col-form-label"><?php echo display('description') ?></label>
                                                <div class="col-md-9">
                                                    <textarea name="description" class="form-control summernote" placeholder="<?php echo display('description')?>" id="content2" required row="3">{description}</textarea>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="form-group row">
                                                <label for="specification" class="col-sm-2 col-form-label"><?php echo display('specification') ?></label>
                                                <div class="col-md-10">
                                                    <textarea name="specification" class="form-control summernote" placeholder="<?php echo display('specification')?>" id="specification" required row="3">{specification}</textarea>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                    
                                </div>
                                

                                <div class="tab-pane" id="tab3">
                                    <div class="form-group row">
                                        <label for="sell_price" class="col-sm-4 col-form-label"><?php echo display('sell_price') ?> <span class="color-red">*</span></label>
                                        <div class="col-sm-4">
                                            <input class="form-control text-right" name="price" type="number" value="{price}" required placeholder="<?php echo display('sell_price') ?>" tabindex="3" min="0">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="supplier_price" class="col-sm-4 col-form-label"><?php echo display('supplier_price') ?> <span class="color-red">*</span></label>
                                        <div class="col-sm-4">
                                            <input type="number" tabindex="4" class="form-control text-right" value="{supplier_price}" name="supplier_price" placeholder="<?php echo display('supplier_price') ?>"  required min="0"/>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group row">
                                        <label for="model" class="col-sm-4 col-form-label"><?php echo display('model') ?> <span class="color-red">*</span></label>
                                        <div class="col-sm-4">
                                            <input type="text" tabindex="5" class="form-control" value="{product_model}" name="model" placeholder="<?php echo display('model') ?>"  required />

                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="supplier" class="col-sm-4 col-form-label"><?php echo display('supplier') ?> <span class="color-red">*</span></label>
                                        <div class="col-sm-4">
                                            <select name="supplier_id" class="form-control select2" required="" style="width: 100%" id="supplier">
                                                {supplier_list}
                                                <option value="{supplier_id}">{supplier_name} </option>
                                                {/supplier_list}
                                                <?php if ($supplier_selected) { ?>
                                                {supplier_selected}
                                                    <option selected value="{supplier_id}">{supplier_name} </option>
                                                {/supplier_selected}
                                                <?php }else{ ?>
                                                <option selected value="0"><?php echo display('supplier_not_selected')?></option>
                                                <?php } ?>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="variant" class="col-sm-4 col-form-label"><?php echo display('variant') ?> <span class="color-red">*</span></label>
                                        <div class="col-sm-4">
                                            <select name="variant[]" class="form-control select2" multiple required="" style="width: 100%" id="variant">
                                                <option></option>
                                                <?php if ($variant_list){ ?>
                                                {variant_list}
                                                <option value="{variant_id}">{variant_name}</option>
                                                {/variant_list}
                                                <?php } ?>

                                                <?php
                                                if ($variants) {
                                                    $exploded = explode(',', $variants);
                                                    foreach ($exploded as $elem) {
                                                    $this->db->select('*');
                                                    $this->db->from('variant');
                                                    $this->db->where('variant_id',$elem);
                                                    $this->db->order_by('variant_name','asc');
                                                    $result = $this->db->get()->row();
                                                ?>
                                                <option value="<?php echo $result->variant_id?>" selected="" ><?php echo $result->variant_name?></option>
                                                <?php
                                                    }
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                
                                <ul class="pager wizard">
                                    <li class="previous first" style="display:none;"><a href="#"><?php echo display('first')?></a></li>
                                    <li class="previous"><a href="#"><?php echo display('prev')?></a></li>
                                    <li class="next last" style="display:none;"><a href="#"><?php echo display('last')?></a></li>
                                    <li class="next"><a href="#"><?php echo display('next')?></a></li>
                                    <li class="finish pull-right"><button type="submit" href="javascript:;" name="add-product"><?php echo display('save_changes')?></button></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Edit Product End -->

<!--Select ads type by javascript start-->
<script type="text/javascript">
    $(document).ready(function() {
        $('#onsale').on('change', function() {
            var onsale = $('#onsale option:selected').val();
            if (onsale == 1) {
                $('.onsale_price').css({'display': 'block'});
            }else {
                $('.onsale_price').css({'display': 'none'});
            }
        });

        //Form wizard
        var $validator = $("#commentForm").validate();

        //Root wizard progress bar
        $('#rootwizard').bootstrapWizard({
            'tabClass'  : 'nav nav-pills',
            'onNext'    : validateTab,
            'onTabClick': validateTab
        }); 

        //Validate filed
        function validateTab(tab, navigation, index, nextIndex){
            if (nextIndex <= index){
                return;
            }
            var commentForm = $("#commentForm")
            var $valid = commentForm.valid();
            if($valid) {
                var $total = navigation.find('li').length;
                var $current = index + 1;
                var $percent = ($current / $total) * 100;
                $('#rootwizard .progress-bar').css({width: $percent + '%'});
            }else{
                $validator.focusInvalid();
                return false;
            }

            if (nextIndex > index+1){
                for (var i = index+1; i < nextIndex - index + 1; i++){
                    $('#rootwizard').bootstrapWizard('show', i);
                    $valid = commentForm.valid();
                    if(!$valid) {
                        $validator.focusInvalid();
                        return false;
                    }
                }
                return false;
            }
        }
    });
</script>
<!--Select ads type by javascript end-->