  <div class="card">
            <div class="panel panel-default">
                <div class="panel-heading clearfix">
                    <p class="pull-right" style="margin: 0;">Step - 01</p>
                    <p class="pull-left" style="margin: 0;">Database Configuration</p>
                </div>

                <div class="panel-body">
                <!--===========================[ code here ]================================= -->
                  <form method="post">
                        <div class="form-group">
                            <label for="database">Database Name:</label>
                            <input type="text" class="form-control" id="database" name="database_name" 
                                value="<?php echo $saved_data['database_name'] ?? ''; ?>" required>
                        </div>

                        <div class="form-group">
                            <label for="user">User Name:</label>
                            <input type="text" class="form-control" id="user" name="database_user" 
                                value="<?php echo $saved_data['database_user'] ?? ''; ?>">
                        </div>

                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="database_password" 
                                value="<?php echo $saved_data['database_password'] ?? ''; ?>">
                        </div>

                        <div class="form-group">
                            <label for="servername">Server Name:</label>
                            <input type="text" class="form-control" id="servername" name="servername" 
                                value="<?php echo $saved_data['server_name'] ?? ''; ?>">
                        </div>
                            <button type="submit" class="btn btn-info pull-right">
                                Next <i class="fa fa-arrow-right" ></i>
                            </button>



                    </form>

                <!--===============================[ end code here]============================= -->

            </div> 
        </div>