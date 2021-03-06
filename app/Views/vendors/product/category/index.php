<?= $this->extend('templates/admin'); ?>

<?= $this->section('content'); ?>
<div class="container-fluid content-frame mb-5 shadow">
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="content-heading mb-0 text-gray-800">Product Categories</h1>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered" id="dataProductCategories" width="100%" cellspacing="0">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Product Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>No</th>
                    <th>Category</th>
                    <th>Description</th>
                    <th>Product Amount</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Best Seller</td>
                        <td>Lorem ipsum dolor sit.</td>
                        <td>4</td>
                        <td>
                            <div class="btn btn-success btn-sm">Active</div>
                        </td>
                        <td class="text-center">
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-eye"></span><span class="d-sm-none d-lg-inline">Detail</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-pencil-alt"></span><span class="d-sm-none d-lg-inline">Edit</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-trash"></span><span class="d-sm-none d-lg-inline">Delete</span></span></button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Full Package</td>
                        <td>Lorem ipsum dolor sit.</td>
                        <td>3</td>
                        <td>
                            <div class="btn btn-success btn-sm">Active</div>
                        </td>
                        <td class="text-center">

                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-eye"></span><span class="d-sm-none d-lg-inline">Detail</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-pencil-alt"></span><span class="d-sm-none d-lg-inline">Edit</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-trash"></span><span class="d-sm-none d-lg-inline">Delete</span></span></button>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>The Day</td>
                        <td>Lorem ipsum dolor sit.</td>
                        <td>3</td>
                        <td>
                            <div class="btn btn-success btn-sm">Active</div>
                        </td>
                        <td class="text-center">

                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-eye"></span><span class="d-sm-none d-lg-inline">Detail</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-pencil-alt"></span><span class="d-sm-none d-lg-inline">Edit</span></button>
                            <button type="button" class="btn btn-action btn-sm small mb-1"><span class="d-lg-none fa fa-trash"></span><span class="d-sm-none d-lg-inline">Delete</span></span></button>
                        </td>
                    </tr>
                </tbody>
            </tfoot>
        </table>
    </div>
</div>
<?= $this->endSection(); ?>
<?= $this->section('script'); ?>
<script>
    $(document).ready(function() {
        $('#dataProductCategories').DataTable();
    });
</script>
<?= $this->endSection(); ?>