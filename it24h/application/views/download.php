<?php $this->load->view('template/head'); ?>
<?php $this->load->view('template/header'); ?>
<?php $this->load->view('template/navbar'); ?>

<div id="main-wrapper" class="container">
    <div id="main-content" class="col-md-8" >
        <h1><span class="glyphicon glyphicon-download-alt"></span> Download </h1>
        <table class="table table-hover">
            <tr>
                <th>STT</th>
                <th>Tên </th>
                <th style="width: 65%">Mô tả </th>
                <th class="text-center">Tải về</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Teamview</td>
                <td>Bạn có thể điều khiển máy tính của đối tác từ xa như thể bạn đang ngồi trước nó.</td>
                <td class="text-center">
                    <a href="http://download.teamviewer.com/download/TeamViewer_Setup_vi.exe">
                        <span class="glyphicon glyphicon-download-alt"></span>
                    </a>
                </td>
            </tr>    
            <tr>
                <td>2</td>
                <td>Jetclean</td>
                <td>phần mềm dọn dẹp hệ thống chuyên nghiệp, có khả năng dọn dẹp máy tính của bạn chỉ với một cú nhấp chuột, giúp tối ưu hóa hiệu suất máy tính của bạn một cách dễ dàng.</td>
                <td class="text-center">
                    <a href="http://files2.majorgeeks.com/4b459ea1a5917be436df5f0bd5b3c4ad/allinone/jetclean-setup.exe">
                        <span class="glyphicon glyphicon-download-alt"></span>
                    </a>
                </td>
            </tr>    


        </table>
    </div>
    <?php $this->load->view('template/sidebar'); ?>
</div>

<?php $this->load->view('template/foot'); ?>

