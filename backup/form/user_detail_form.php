<div class="card">
    <div class="panel panel-default">
        <div class="panel-heading clearfix">
            <p class="pull-right" style="margin: 0;">Step - 02</p>
            <p class="pull-left" style="margin: 0;">User Detail</p>
        </div>
        <div class="panel-body">
            <!--===========================[ FORM ]=============================-->
            <form method="post">
                <div class="form-group hidden">
                    <label for="site_url" class="col-form-label">Base URL:</label>
                    <input type=""
                           class="form-control"
                           id="site_url"
                           name="site_url"
                           value="<?php echo $saved_data['base_url'] ?? $base_url; ?>">
                </div>

                <div class="form-group">
                    <label for="user_name" class="col-form-label">User Name:</label>
                    <input type="text"
                           class="form-control"
                           id="user_name"
                           name="user_name"
                           value="<?php echo $saved_data['user_name'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="user_password" class="col-form-label">Password:</label>
                    <input type="password"
                           class="form-control"
                           id="user_password"
                           name="user_password"
                           value="<?php echo $saved_data['user_password'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="user_email_id" class="col-form-label">Email ID:</label>
                    <input type="email"
                           class="form-control"
                           id="user_email_id"
                           name="user_email_id"
                           value="<?php echo $saved_data['user_email'] ?? ''; ?>">
                </div>

                <div class="d-flex justify-content-between">
                  <!-- Previous Button on the Left -->
                    <a href="index" class="btn btn-info">
                        <i class="fa fa-arrow-left"></i> Previous
                    </a>

                    <!-- Next Button on the Right -->
                    <button type="submit" class="btn btn-info pull-right">
                        Next <i class="fa fa-arrow-right" style="margin-left: 5px;"></i>
                    </button>

                 
                </div>
            </form>
            <!--===========================[ END FORM ]=========================-->
        </div>
    </div>
</div>
