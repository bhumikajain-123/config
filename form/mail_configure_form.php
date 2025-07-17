<div class="card">
    <div class="panel panel-default">
        <div class="panel-heading clearfix">
            <p class="pull-right" style="margin: 0;">Step - 03</p>
            <p class="pull-left" style="margin: 0;">Mail-Setup</p>
        </div>
        <div class="panel-body">
            <!--===================[ Mail Setup Form ]===================-->
            <form method="post">
                <div class="form-group">
                    <label for="email_id" class="col-form-label">E-mail:</label>
                    <input type="email" class="form-control" id="email_id" name="mailsetup_email"
                        value="<?php echo $saved_data['mailsetup_email'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="password" class="col-form-label">Password:</label>
                    <input type="password" class="form-control" id="password" name="mailsetup_password"
                        value="<?php echo $saved_data['mailsetup_password'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="email_host" class="col-form-label">Email Host (e.g. SMTP):</label>
                    <input type="text" class="form-control" id="email_host" name="mailsetup_host"
                        value="<?php echo $saved_data['mailsetup_host'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="port" class="col-form-label">Port:</label>
                    <input type="text" maxlength="4" class="form-control" id="port" name="mailsetup_port"
                        onkeypress='return event.charCode >= 48 && event.charCode <= 57'
                        value="<?php echo $saved_data['mailsetup_port'] ?? ''; ?>">
                </div>

                <div class="form-group">
                    <label for="mail_encryption" class="col-form-label">Mail Encryption:</label>
                    <select name="mailsetup_encryption" id="mail_encryption" class="form-control">
                        <option value="">-- select --</option>
                        <option value="TLS" <?php if (($saved_data['mailsetup_encryption'] ?? '') === 'TLS') echo 'selected'; ?>>TLS</option>
                        <option value="SLS" <?php if (($saved_data['mailsetup_encryption'] ?? '') === 'SLS') echo 'selected'; ?>>SLS</option>
                    </select>
                </div>

                <div class="d-flex justify-content-between">
                 <a href="user_details" class="btn btn-info">
                        <i class="fa fa-arrow-left"></i> Previous
                    </a>

                    <!-- Next Button on the Right -->
                    <button type="submit" class="btn btn-info pull-right">
                        Next <i class="fa fa-arrow-right" style="margin-left: 5px;"></i>
                    </button>
                </div>
            </form>
            <!--===================[ End Form ]===================-->
        </div>
    </div>
</div>
