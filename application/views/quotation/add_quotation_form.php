<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Customer js php -->
<script src="<?php echo base_url()?>my-assets/js/admin_js/json/customer.js.php" ></script>
<!-- Product invoice js -->
<script src="<?php echo base_url()?>my-assets/js/admin_js/json/product_invoice.js.php" ></script>
<!-- invoice js -->
<script src="<?php echo base_url()?>my-assets/js/admin_js/invoice.js" type="text/javascript"></script>

<!-- Add new quotation start -->
<style>
    #payment_from_2
    {
        display:none;
    }
</style>

<!-- Customer type change by javascript start -->
<script type="text/javascript">

    //Bank Information Show
	function bank_info_show(payment_type)
	{
	    if(payment_type.value=="1"){
	        document.getElementById("bank_info_hide").style.display="none";
	    }
	    else{ 
	        document.getElementById("bank_info_hide").style.display="block";  
	    }
	}

    //Active/Inactive customer
    function active_customer(status)
    {
        if(status=="payment_from_2"){
            document.getElementById("payment_from_2").style.display="none";
            document.getElementById("payment_from_1").style.display="block";
            document.getElementById("myRadioButton_2").checked = false;
            document.getElementById("myRadioButton_1").checked = true;
            $('#customer_name_others').val('');
            $('#customer_name_others_address').val('');
        }
        else{
            document.getElementById("payment_from_1").style.display="none";
            document.getElementById("payment_from_2").style.display="block";
            document.getElementById("myRadioButton_2").checked = false;
            document.getElementById("myRadioButton_1").checked = true;
            document.getElementById("SchoolHiddenId").removeAttribute("value");
            $('#customer_name').val('');
        }
    }
</script>
<!-- Customer type change by javascript end -->

<!-- Add quotation start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('quotation') ?></h1>
            <small><?php echo display('add_new_quotation') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('quotation') ?></a></li>
                <li class="active"><?php echo display('quotation') ?></li>
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

        <div class="row">
            <div class="col-sm-12">
                <div class="column">
                  <a href="<?php echo base_url('Cquotation/manage_quotation')?>" class="btn btn-info m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('manage_quotation')?></a>
                  <a href="<?php echo base_url('Cinvoice/pos_invoice')?>" class="btn btn-primary m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('pos_invoice')?></a>
                </div>
            </div>
        </div>

        <!--Add quotation -->
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title">
                            <h4><?php echo display('quotation') ?></h4>
                        </div>
                    </div>
                    <?php echo form_open_multipart('Cquotation/insert_quotation',array('class' => 'form-vertical', 'id' => 'validate'))?>
                    <div class="panel-body">
                        <div class="row">

                        	<div class="col-sm-8" id="payment_from_1">
                                <div class="form-group row">
                                    <label for="customer_name" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                       <input type="text"  name="customer_name" class="customerSelection form-control" placeholder='<?php echo display('customer_name') ?>' id="customer_name" required/>
                                        <input id="SchoolHiddenId" class="customer_hidden_value" type="hidden" name="customer_id">
                                    </div>
                                    <div  class=" col-sm-3">
                                        <input id="myRadioButton_1" type="button" onClick="active_customer('payment_from_1')" id="myRadioButton_1" class="btn btn-success checkbox_account" name="customer_confirm" checked="checked" value="<?php echo display('new_customer') ?>">
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-8" id="payment_from_2">
                               <div class="form-group row">
                                    <label for="customer_name_others" class="col-sm-3 col-form-label"><?php echo display('customer_name') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-6">
                                       <input  autofill="off" type="text" name="customer_name_others" placeholder='<?php echo display('customer_name') ?>' id="customer_name_others" class="form-control" required/>
                                    </div>

                                    <div  class="col-sm-3">
                                        <input  onClick="active_customer('payment_from_2')" type="button" id="myRadioButton_2" class="checkbox_account btn btn-success" name="customer_confirm_others" value="<?php echo display('old_customer') ?>">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="customer_name_others_address" class="col-sm-3 col-form-label"><?php echo display('address') ?> </label>
                                    <div class="col-sm-6">
                                       <input type="text"  size="100" name="customer_name_others_address" class=" form-control" placeholder='<?php echo display('address') ?>' id="customer_name_others_address" />
                                    </div>
                                </div> 
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="store_id" class="col-sm-4 col-form-label"><?php echo display('store') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                       <select class="form-control" id="store_id" required="" name="store_id">
                                       <option value=""></option>
                                        {store_list}
                                           <option value="{store_id}">{store_name}</option>
                                        {/store_list}
                                       </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group row">
                                    <label for="date" class="col-sm-4 col-form-label"><?php echo display('date') ?> <i class="text-danger">*</i></label>
                                    <div class="col-sm-8">
                                       <?php date_default_timezone_set("Asia/Dhaka"); $date = date('m-d-Y'); ?>
                                        <input class="form-control datepicker" type="text" size="50" name="invoice_date" id="date" required value="<?php echo $date; ?>" />
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="table-responsive" style="margin-top: 10px">
                            <table class="table table-bordered table-hover" id="normalinvoice">
                                <thead>
                                    <tr>
                                        <th class="text-center"><?php echo display('item_information') ?> <i class="text-danger">*</i></th>
                                        <th class="text-center" width="130"><?php echo display('variant') ?> <i class="text-danger">*</i></th>
                                        <th class="text-center"><?php echo display('available_quantity') ?></th>
                                        <th class="text-center"><?php echo display('unit') ?></th>
                                        <th class="text-center"><?php echo display('quantity') ?> <i class="text-danger">*</i></th>
                                        <th class="text-center"><?php echo display('rate') ?> <i class="text-danger">*</i></th>
                                        <th class="text-center"><?php echo display('discount') ?> </th>
                                        <th class="text-center"><?php echo display('total') ?> <i class="text-danger">*</i></th>
                                        <th class="text-center"><?php echo display('action') ?></th>
                                    </tr>
                                </thead>
                                <tbody id="addinvoiceItem">
                                    <tr>
                                        <td>
                                            <input type="text" name="product_name" onkeypress="invoice_productList(1);" class="form-control productSelection" placeholder='<?php echo display('product_name') ?>' required="" id="product_name" >

                                            <input type="hidden" class="autocomplete_hidden_value product_id_1" name="product_id[]"/>

                                            <input type="hidden" class="sl" value="1">
                                        </td>
                                        <td class="text-center">
                                            <select name="variant_id[]" id="variant_id_1" class="form-control variant_id" required="" style="width: 100%">
                                                <option value=""></option>
                                            </select>
                                        </td> 
                                        <td>
                                            <input type="text" name="available_quantity[]" id="avl_qntt_1" class="form-control text-right available_quantity_1" placeholder="0" readonly="1" />
                                        </td>
                                        <td>
                                            <input type="text" id="" class="form-control text-right unit_1" placeholder ="None" readonly="" />
                                        </td>
                                        <td>
                                            <input type="number" name="product_quantity[]" onkeyup="quantity_calculate(1);" onchange="quantity_calculate(1);" id="total_qntt_1" class="form-control text-right" value="1" min="1" required="" />
                                        </td>
                                        <td>
                                            <input type="number" name="product_rate[]" onkeyup="quantity_calculate(1);" onchange="quantity_calculate(1);" placeholder="0.00" id="price_item_1" class="price_item1 form-control text-right" required="" min="0" />
                                        </td>

                                        <td>
                                            <input type="number" name="discount[]" onkeyup="quantity_calculate(1);" onchange="quantity_calculate(1);" id="discount_1" class="form-control text-right" placeholder="0.00" min="0" />
                                        </td>
                                       
                                        <td>
                                            <input class="total_price form-control text-right" type="text" name="total_price[]" id="total_price_1" placeholder="0.00" readonly="readonly" />
                                        </td>

                                        <td>


<?php
    //Tax basic info
    $this->db->select('*');
    $this->db->from('tax');
    $this->db->order_by('tax_name','asc');
    $tax_information = $this->db->get()->result();

    if(!empty($tax_information)){
        foreach($tax_information as $k=>$v){
           if ($v->tax_id == 'H5MQN4NXJBSDX4L') {
                $tax['cgst_name']= $v->tax_name; 
                $tax['cgst_id']  = $v->tax_id; 
                $tax['cgst_status']  = $v->status; 
           }elseif($v->tax_id == '52C2SKCKGQY6Q9J'){
                $tax['sgst_name']= $v->tax_name; 
                $tax['sgst_id']  = $v->tax_id; 
                $tax['sgst_status']  = $v->status; 
           }elseif($v->tax_id == '5SN9PRWPN131T4V'){
                $tax['igst_name']   = $v->tax_name; 
                $tax['igst_id']     = $v->tax_id; 
                $tax['igst_status'] = $v->status; 
           }
        }
    }
?>

<!-- Tax calculate start-->
<?php if ($tax['cgst_status'] ==1) { ?>
<input type="hidden" id="cgst_1" class="cgst"/> 
<input type="hidden" id="total_cgst_1" class="total_cgst" name="cgst[]" /> 
<input type="hidden" name="cgst_id[]" id="cgst_id_1">
<?php } if ($tax['sgst_status'] ==1) { ?>  
<input type="hidden" id="sgst_1" class="sgst"/>
<input type="hidden" id="total_sgst_1" class="total_sgst" name="sgst[]"/>
<input type="hidden" name="sgst_id[]" id="sgst_id_1">
<?php } if ($tax['igst_status'] ==1) { ?>   
<input type="hidden" id="igst_1" class="igst"/>
<input type="hidden" id="total_igst_1" class="total_igst" name="igst[]"/>
<input type="hidden" name="igst_id[]" id="igst_id_1">
<?php } ?>
<!-- Tax calculate end -->

<!-- Discount calculate start-->
<input type="hidden" id="total_discount_1" class="" />
<input type="hidden" id="all_discount_1" class="total_discount"/>
<!-- Discount calculate end -->

                                            <button style="text-align: right;" class="btn btn-danger" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"><?php echo display('delete')?>
                                            </button>
                                        </td>
                                    </tr>
                                </tbody>
       
                                <tfoot>
                                    <?php if ($tax['cgst_status'] ==1) { ?>
                                    <tr>
                                        <td style="text-align:right;" colspan="7"><b><?php echo $tax['cgst_name'] ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="total_cgst" class="form-control text-right" name="total_cgst" placeholder="0.00" readonly="readonly" />
                                        </td>
                                    </tr>     
                                    <?php } if ($tax['sgst_status'] ==1) { ?>    
                                    <tr>
                                        <td style="text-align:right;" colspan="7"><b><?php echo $tax['sgst_name'] ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="total_sgst" class="form-control text-right" name="total_sgst" placeholder="0.00" readonly="readonly" />
                                        </td>
                                    </tr>     
                                     <?php } if ($tax['igst_status'] ==1) { ?>
                                    <tr>
                                        <td style="text-align:right;" colspan="7"><b><?php echo $tax['igst_name'] ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="total_igst" class="form-control text-right" name="total_igst" placeholder="0.00" readonly="readonly" />
                                        </td>
                                    </tr>
                                    <?php } ?> 
                                    <tr>
                                        <td colspan="5"  rowspan="4">
                                            <label for="details" class=""><?php echo display('details')?></label>
                                            <textarea class="form-control" name="details" id="details" rows="7" placeholder="<?php echo display('details')?>"></textarea>
                                        </td>

                                        <td style="text-align:right;" colspan="2"><b><?php echo display('product_discount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="total_discount_ammount" class="form-control text-right" name="total_discount" placeholder="0.00" readonly="readonly" />
                                        </td>
                                    </tr>        
                                    <tr>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('invoice_discount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="invoice_discount" class="form-control text-right" name="invoice_discount" placeholder="0.00" onkeyup="calculateSum();" onchange="calculateSum();"/>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="text-align:right;" colspan="2"><b><?php echo display('service_charge') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="service_charge" class="form-control text-right" name="service_charge" placeholder="0.00" onkeyup="calculateSum();" onchange="calculateSum();"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"  style="text-align:right;"><b><?php echo display('grand_total') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="grandTotal" class="form-control text-right" name="grand_total_price" placeholder="0.00" readonly="readonly" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center">
                                            <input type="button" id="add-invoice-item" class="btn btn-info" name="add-invoice-item"  onClick="addInputField('addinvoiceItem');" value="<?php echo display('add_new_item') ?>" />
                                            <input type="hidden" name="baseUrl" class="baseUrl" value="<?php echo base_url();?>"/>

                                            <input  class="btn btn-warning" value="<?php echo display('full_paid') ?>" tabindex="15" onclick="full_paid();" type="button">
                                        </td>
                                        <td style="text-align:right;" colspan="6"><b><?php echo display('paid_ammount') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="paidAmount" 
                                            onkeyup="invoice_paidamount();"  class="form-control text-right" name="paid_amount" placeholder="0.00" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="width: 220px">
                                            <input type="submit" id="add-invoice" class="btn btn-success" name="add-quotation" value="<?php echo display('submit') ?>" />
                                        </td>
                                      
                                        <td style="text-align:right;" colspan="6"><b><?php echo display('due') ?>:</b></td>
                                        <td class="text-right">
                                            <input type="text" id="dueAmmount" class="form-control text-right" name="due_amount" placeholder="0.00" readonly="readonly"/>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <?php echo form_close()?>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- Add Quotation End -->

<script type="text/javascript">

    // Counts and limit for invoice
    var count = 2;
    var limits = 500;

    //Add Invoice Field
    function addInputField(divName){

        if (count == limits)  {
            alert("You have reached the limit of adding " + count + " inputs");
        }
        else{
            var newdiv = document.createElement('tr');
            var tabin="product_name_"+count;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });

            newdiv.innerHTML ='<tr><td><input type="text" name="product_name" onkeyup="invoice_productList('+count+');" class="form-control productSelection" placeholder="<?php echo display('product_name') ?>" required="" id="product_name_'+count+'" ><input type="hidden" class="autocomplete_hidden_value product_id_'+count+'" name="product_id[]"/><input type="hidden" class="sl" value="'+count+'"><input type="hidden" class="baseUrl" value="<?php echo base_url();?>" /></td><td class="text-center"> <select name="variant_id[]" id="variant_id_'+count+'" class="form-control variant_id" required="" style="width: 100%"><option value=""></option></select></td><td><input type="text" name="available_quantity[]"  class="form-control text-right available_quantity_'+count+'" id="avl_qntt_'+count+'" placeholder="0" readonly="1" /></td> <td><input type="text" id="" class="form-control text-right unit_'+count+'" placeholder="None" readonly="" /></td><td><input type="number" name="product_quantity[]" onkeyup="quantity_calculate('+count+');" onchange="quantity_calculate('+count+');" id="total_qntt_'+count+'" class="form-control text-right" value="1" min="1" required="" /></td><td><input type="number" name="product_rate[]" onkeyup="quantity_calculate('+count+');" onchange="quantity_calculate('+count+');" placeholder="0.00" id="price_item_'+count+'" class="price_item'+count+' form-control text-right" required="" min="0" /></td><td><input type="number" name="discount[]" onkeyup="quantity_calculate('+count+');" onchange="quantity_calculate('+count+');" id="discount_'+count+'" class="form-control text-right" placeholder="0.00" min="0" /></td><td><input class="total_price form-control text-right" type="text" name="total_price[]" id="total_price_'+count+'" placeholder="0.00" readonly="readonly" /></td>'+

                '<td>'+


                <?php if ($tax['cgst_status'] ==1) { ?>

                '<input type="hidden" id="cgst_'+count+'" class="cgst"/> <input type="hidden" id="total_cgst_'+count+'" class="total_cgst" name="cgst[]" /> <input type="hidden" name="cgst_id[]" id="cgst_id_'+count+'">'+
                <?php }if ($tax['sgst_status'] ==1) { ?>

                '<input type="hidden" id="sgst_'+count+'" class="sgst"/> <input type="hidden" id="total_sgst_'+count+'" class="total_sgst" name="sgst[]"/><input type="hidden" name="sgst_id[]" id="sgst_id_'+count+'">'+

                <?php }if ($tax['igst_status'] ==1) { ?>

                '<input type="hidden" id="igst_'+count+'" class="igst"/><input type="hidden" id="total_igst_'+count+'" class="total_igst" name="igst[]"/><input type="hidden" name="igst_id[]" id="igst_id_'+count+'">'+
               <?php } ?>


            '<input type="hidden" id="total_discount_'+count+'" class="" /><input type="hidden" id="all_discount_'+count+'" class="total_discount"/><button style="text-align: right;" class="btn btn-danger" type="button" value="<?php echo display('delete')?>" onclick="deleteRow(this)"><?php echo display('delete')?></button></td></tr>';
            document.getElementById(divName).appendChild(newdiv);
            document.getElementById(tabin).focus();
            count++;

            $("select.form-control:not(.dont-select-me)").select2({
                placeholder: "Select option",
                allowClear: true
            });
        }
    }


    //Select stock by product and variant id
    $('body').on('change', '.variant_id', function() {

        var sl         = $(this).parent().parent().find(".sl").val();
        var product_id = $('.product_id_'+sl).val();
        var avl_qntt   = $('#avl_qntt_'+sl).val();
        var store_id   = $('#store_id').val();
        var variant_id = $(this).val();

        if (store_id == 0) {
            alert('<?php echo display('please_select_store')?>');
            return false;
        }

        $.ajax({
            type: "post",
            async: false,
            url: '<?php echo base_url('Cpurchase/available_stock')?>',
            data: {product_id: product_id,variant_id:variant_id,store_id:store_id},
            success: function(data) {
                if (data == 0) {
                    $('#avl_qntt_'+sl).val('');
                    alert('<?php echo display('product_is_not_available_in_this_store')?>');
                    return false;
                }else{
                    $('#avl_qntt_'+sl).val(data);
                }
            },
            error: function() {
                alert('Request Failed, Please check your code and try again!');
            }
        });
    });
</script>