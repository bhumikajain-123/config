<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mail-iHRMS Setup </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="card shadow wide-card">
                <div class="text-center ">
                    <img src="assets/image/ihrms-logo.png" alt="ihrms logo" class="img-fluid">
                    <h5 class="mt-4 text-primary"> Mail Setup</h5>
                </div>
                <div class="card-body">
                    <form action="frmaction/mail_frm.php" method="post">
                        <div class="form-group">
                            <label for="email_id" class="col-form-label">E-mail:</label>
                            <input type="email" class="form-control" id="email_id" required name="mailsetup_email"
                                value="<?php echo $saved_data['mailsetup_email'] ?? ''; ?>">
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-form-label">Password:</label>
                            <input type="password" class="form-control" id="password" required name="mailsetup_password"
                                value="<?php echo $saved_data['mailsetup_password'] ?? ''; ?>">
                        </div>
                        <div class="form-group">
                            <label for="email_host" class="col-form-label">Email Host (e.g. SMTP):</label>
                            <input type="text" class="form-control" id="email_host" required name="mailsetup_host"
                                value="<?php echo $saved_data['mailsetup_host'] ?? ''; ?>">
                        </div>
                        <div class="form-group">
                            <label for="port" class="col-form-label">Port:</label>
                            <input type="text" maxlength="4" class="form-control" required id="port" name="mailsetup_port"
                                onkeypress='return event.charCode >= 48 && event.charCode <= 57'
                                value="<?php echo $saved_data['mailsetup_port'] ?? ''; ?>">
                        </div>
                        <div class="form-group">
                            <label for="mail_encryption" class="col-form-label">Mail Encryption:</label>
                            <select name="mailsetup_encryption" id="mail_encryption" required class="form-control">
                                <option value="">-- select --</option>
                                <option value="TLS"
                                    <?php if (($saved_data['mailsetup_encryption'] ?? '') === 'TLS') echo 'selected'; ?>>
                                    TLS</option>
                                <option value="SLS"
                                    <?php if (($saved_data['mailsetup_encryption'] ?? '') === 'SLS') echo 'selected'; ?>>
                                    SLS</option>
                            </select>
                        </div>
                      
                            <!-- <a href="user_details" class="btn btn-info">
                        <i class="fa fa-arrow-left"></i> Previous
                    </a> -->
                            <!-- Next Button on the Right -->
                            <button type="submit" class="btn btn-info float-end mt-3">
                                Next <i class="fa fa-arrow-right ms-1"></i>
                            </button>

                            <!-- <a href="" class="btn btn-info pull-right" >Next  <i class="fa fa-arrow-right" style="margin-left: 5px;"></i></a> -->

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>