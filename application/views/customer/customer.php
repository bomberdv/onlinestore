<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Manage Customer Start -->
<div class="content-wrapper">
	<section class="content-header">
	    <div class="header-icon">
	        <i class="pe-7s-note2"></i>
	    </div>
	    <div class="header-title">
	        <h1><?php echo display('manage_customer') ?></h1>
	        <small><?php echo display('manage_your_customer') ?></small>
	        <ol class="breadcrumb">
	            <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
	            <li><a href="#"><?php echo display('customer') ?></a></li>
	            <li class="active"><?php echo display('manage_customer') ?></li>
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
                
                  <a href="<?php echo base_url('Ccustomer')?>" class="btn btn-success m-b-5 m-r-2"><i class="ti-plus"> </i> <?php echo display('add_customer')?></a>

                  <a href="<?php echo base_url('Ccustomer/customer_ledger_report')?>" class="btn btn-warning m-b-5 m-r-2"><i class="ti-align-justify"> </i> <?php echo display('customer_ledger')?></a>

                </div>
            </div>
        </div>

		<!-- Manage Customer -->
		<div class="row">
		    <div class="col-sm-12">
		        <div class="panel panel-bd lobidrag">
		            <div class="panel-heading">
		                <div class="panel-title">
		                    <h4><?php echo display('manage_customer') ?></h4>
		                </div>
		            </div>
		            <div class="panel-body">
		                <div class="table-responsive">
		                    <table id="dataTableExample2" class="table table-bordered table-striped table-hover">
								<thead>
									<tr>
										<th><?php echo display('sl') ?></th>
										<th><?php echo display('customer_name') ?></th>
										<th><?php echo display('address') ?></th>
										<th><?php echo display('mobile') ?></th>
										<th><?php echo display('email') ?></th>
										<th style="text-align:center !Important"><?php echo display('action') ?></th>
									</tr>
								</thead>
								<tbody>
								<?php if ($customers_list) { ?>
								{customers_list}
									<tr>
										<td>{sl}</td>
										<td>
											<?php if ($this->session->userdata('user_type') == '4') { ?>
												{customer_name}
											<?php }else{ ?>		
											<a href="<?php echo base_url().'Ccustomer/customerledger/{customer_id}'; ?>">{customer_name}</a>
											<?php } ?>	
										</td>
										<td>{customer_short_address}</td>
										<td>{customer_mobile}</td>
										<td>{customer_email}</td>
										<td>
											<center>
											<?php echo form_open()?>
												<a href="<?php echo base_url().'Ccustomer/customer_update_form/{customer_id}'; ?>" class="btn btn-info btn-sm" data-toggle="tooltip" data-placement="left" title="<?php echo display('update') ?>"><i class="fa fa-pencil" aria-hidden="true"></i></a>

												<a href="<?php echo base_url('Ccustomer/customer_delete/{customer_id}')?>" class="btn btn-danger btn-sm" onclick="return confirm('<?php echo display('are_you_sure_want_to_delete')?>');" data-toggle="tooltip" data-placement="right" title="" data-original-title="<?php echo display('delete') ?> "><i class="fa fa-trash-o" aria-hidden="true"></i></a>

											<?php echo form_close()?>
											</center>
										</td>
									</tr>
								{/customers_list}
								<?php } ?>
								</tbody>
		                    </table>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	</section>
</div>
<!-- Manage Customer End -->

<!-- Delete Customer ajax code -->
<script type="text/javascript">
	//Delete Customer 
	$(".deleteCustomer").click(function()
	{	
		var customer_id=$(this).attr('name');
		var csrf_test_name=  $("[name=csrf_test_name]").val();
		var x = confirm('<?php echo display('are_you_sure_want_to_delete')?>');
		if (x==true){
		$.ajax
		   ({
				type: "POST",
				url: '<?php echo base_url('Ccustomer/customer_delete')?>',
				data: {customer_id:customer_id,csrf_test_name:csrf_test_name},
				cache: false,
				success: function(datas)
				{
					location.reload();
				} 
			});
		}
	});
</script>