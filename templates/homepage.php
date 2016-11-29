<?php
include "base.php";
?>
<div class="container">
  <div class="text-center">
    <h2 style="text-align: center; font-family: 'Acme', sans-serif; color:orange">Available Tradeable Items</h2>
  </div>
  
  <div class="row">
    <div class="col-md-8 col-md-offset-2 table-responsive">
      <div id="table_sech"></div>
    </div>
  </div>
</div>
<script type="text/template" id="table_headingh">
  <table class="table table-hover table-condensed">
    <thead class="thead-inverse">
      <tr>
        <th>Image</th><th>Name</th><th>Description</th><th>Trader</th><th>Trade</th><th>Uploaded</th><th></th>
      </tr>
    </thead>
    <tbody>
</script>

<!-- Modal -->
  <div class="modal fade" id="requestModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-body">
          <form class="form-vertical">
            <fieldset>
            <!-- Select Basic -->
            <div class="form-group">
              <label class="col-md-8 control-label" for="selectbasic">Select Your Item</label>
              <div class="col-md-8">
                <select id="selectbasic" name="selectbasic" class="form-control">
                  <option value="1">Option one</option>
                  <option value="2">Option two</option>
                </select>
              </div>
            </div>

            <div class="form-group">
              <div class="col-md-4">
                <button id="sendrequest" name="sendrequest" class="btn btn-success" type="submit">Send</button>
                <button id="cancelrequest" name="cancelrequest" class="btn btn-danger" data-dismiss="modal">Cancel</button>
              </div>
            </div>

            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>

      
 