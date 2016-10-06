<div role="main" class="main">
    <a href="#nav" class="nav-toggle">Menu</a>
    <div class="row">
        <div class="col-sm-9" style="background: white; color: black;">
            <h4 class="head-title"><label class="label label-default">Coffee</label><?= product_name($product) ?></h4>
            <div class="row">
                <div class="col-sm-6">
                    <div class="thumbnail">
                        <?= product_image($product) ?>
                    </div>

                </div>
               <!-- <div class="col-sm-2">
                    <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
                        <a href="#comment" class="btn btn-default">Bình luận <span class="fa fa-comments"></span></a>
                        <button class="btn btn-default">Mua <span class="fa fa-shopping-cart"></span></button>
                    </div>
                </div> -->
                <div class="info-product col-sm-6">
                <p class="hidden">
                    <strong>
                        Mã sản phẩm: 
                    </strong>
                    5000124
                </p>
                <p>
                    <strong>
                        Nhà sản xuất:
                    </strong>
                    Cà phê Mộc Bình
                </p>
                <p class="hidden">
                    <strong>
                        Thành phần:
                    </strong>
                    từ những hạt cà phê Arabica, Robusta, Excelsa.
                </p>

                <p>
                    <strong>
                        Đặc điểm: 
                    </strong>
                    <?= product_summary($product) ?>
                </p>
                <p>
                    <strong>
                        Hạn sử dụng: 
                    </strong>
                    2 năm.

                </p>
                <p class="hidden">
                    <strong>
                        Khối lượng: 
                    </strong>
                    Hộp 500gr.
                </p>
                <?php if(product_has_old_price($product)): ?>
                    <p>
                        <strong> Giá: </strong>
                        <span class="text-danger" style="text-decoration: line-through"><?= product_old_price($product) ?> </span>
                    </p>
                    <p>
                        <strong> Khuyến mãi: </strong>
                        <span class="text-danger"><?= product_price($product) ?> </span>
                    </p>
                <?php else: ?>
                    <p>
                        <strong> Giá: </strong>
                        <span class="text-danger"><?= product_price($product) ?> </span>
                    </p>
                <?php endif; ?>
            </div>

                
            </div>
                        <div role="tabpanel">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Chi tiết sản phẩm</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Cách thức mua hàng</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">Những câu hỏi thường gặp</a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <?= product_content($product) ?>
                        Lịch sử thế giới đã minh chứng, có những ý tưởng sáng tạo trước đây được coi là điên rồ, không tưởng thì nay đã thành hiện thực và làm thay đổi hoàn toàn thế giới và nó được khởi nguồn từ cà phê.

                        Từ những ý niệm trên, cùng sự thấu hiểu sâu sắc về cà phê trong vai trò hạt nhân sáng tạo, các chuyên gia của Tập đoàn Trung Nguyên đã dày công nghiên cứu và bào chế thành công dòng sản phẩm CÀ PHÊ SÁNG TẠO – Cà phê tuyệt ngon, chuyên cho não sáng tạo để tiên phong khai phá những thách thức, đỉnh cao trí tuệ mới.

                        Bằng cả tình yêu và sự đam mê cà phê mãnh liệt nhất, từ những hạt cà phê nguyên gốc và tốt nhất thế giới đã được chắt chiu, trên công nghệ hàng đầu, Trung Nguyên đã gửi đến những người yêu và sành cà phê không chỉ là một ly cà phê thơm ngon, quyến rũ bậc nhất mà còn là một năng lượng đặc biệt. Nguồn năng lượng đó dành cho sự khởi động của trí não, cho cảm hứng của những ý tưởng sáng tạo và cho những thành công.

                        Với công thức 3S, Trung Nguyên tạo ra cà phê SÁNG TẠO 8 siêu Sạch, tuyệt ngon dành cho người Sành cà phê, chuyên cho hoạt động Sáng tạo của não.

                        SÁNG TẠO 8 của Trung Nguyên được gọi là "Cà phê của nguyên thủ và ngoại giao” vì sự đặc biệt trong hương vị của nó. Loại hộp 500gr thích hợp làm quà tặng cho những người am hiểu và sành về cà phê.
                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <div class="page-title">
                            <h1>HƯỚNG DẪN THANH TOÁN</h1>
                        </div>
                        <div><div style="width: 100%; line-height: 22px;">
                                <div style="float: left;">
                                    <p style="text-align: justify;" align="center"><em>Coffee Mộc Bình luôn hướng đến việc cung cấp những trải nghiệm mua sắm thuận tiện nhất cho khách hàng. Chúng tôi hỗ trợ các phương thức thanh toán như sau:</em></p>
                                    <p style="text-align: justify;" align="center"><strong>1. &nbsp;</strong><strong><span style="text-decoration: underline;">Thanh toán bẳng thẻ Visa/ Mastercard</span></strong></p>
                                    <p style="text-align: justify;">Trong quá trình đặt hàng, Quý khách hãy chọn <strong>Cổng thanh toán trực tuyến</strong> trong phần <strong>Phương thức thanh toán</strong>.</p>
                                    <p style="text-align: justify;">Quý khách nhập đầy đủ thông tin thẻ thanh toán Visa/ Mastercard</p>
                                    <ul style="text-align: justify;">
                                        <li>Tên chủ thẻ (Tên in trên mặt trước thẻ, không có dấu)</li>
                                        <li>Số thẻ (gồm 16 số, in trên mặt trước của thẻ)</li>
                                        <li>Ngày hết hạn thẻ (phần “Expiry date” trên mặt thẻ)</li>
                                        <li>Mã xác minh (gồm 3 số cuối, in trên mặt sau của thẻ)</li>
                                    </ul>
                                    <p style="text-align: justify;"><strong>2. &nbsp;</strong><strong><span style="text-decoration: underline;">Chuyển khoản ngân hàng</span></strong></p>
                                    <p style="text-align: justify;">Trong quá trình đặt hàng, Quý khách hãy chọn <strong>Chuyển khoản ngân hàng</strong> trong phần <strong>Phương thức thanh toán</strong>.</p>
                                    <p style="text-align: justify;">Chuyển khoản thanh toán vào tài khoản ngân hàng cho chúng tôi theo thông tin dưới đây:</p>
                                    <table style="height: 145px; width: 100%; text-align: left;" border="1" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <td valign="top" width="121">
                                                    <p><em>Tên ngân hàng</em></p>
                                                </td>
                                                <td valign="top" width="469">
                                                    <p>Ngân hàng Vietinbank - Chi nhánh 12 TP. Hồ Chí Minh</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="121">
                                                    <p><em>Chủ tài khoản</em></p>
                                                </td>
                                                <td valign="top" width="469">
                                                    <p>Công Ty Coffee Mộc Bình</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" width="121">
                                                    <p><em>Số tài khoản</em></p>
                                                </td>
                                                <td valign="top" width="469">
                                                    <p><strong>1020100020xxx87</strong></p>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p><span style="color: #ff0000;">&nbsp;&nbsp;&nbsp;&nbsp;<strong> *Lưu ý:</strong></span></p>
                                    <ul>
                                        <li>Quý khách vui lòng ghi rõ Họ tên khách hàng, mã số đơn hàng trong phần nội dung chuyển khoản.</li>
                                        <li>Quý khách vui lòng hoàn tất thủ tục thanh toán trong vòng <strong>48 giờ</strong> sau khi đặt đơn hàng thành công. Sau thời gian trên, đơn hàng của quý khách sẽ không còn hiệu lực.</li>
                                        <li>Phí chuyển khoản (nếu có) sẽ do khách hàng thanh toán.</li>
                                    </ul>
                                    <p style="text-align: justify;"><strong>&nbsp;3. &nbsp;</strong><strong><span style="text-decoration: underline;">Thanh toán trực tiếp khi nhận hàng.</span></strong></p>
                                    <ul>
                                        <li>Phương thức thanh toán khi nhận hàng của chúng tôi chỉ hỗ trợ cho một số danh mục sản phẩm (tham khảo thêm Chính sách giao nhận).</li>
                                        <li>Trong quá trình đặt hàng, Quý khách hãy chọn phương thức <strong>Thanh toán khi nhận hàng</strong> trong phần <strong>Phương thức thanh toán</strong>.</li>
                                        <li>Quý khách vui lòng thanh toán trực tiếp cho Nhân viên giao nhận khi nhận hàng.</li>
                                    </ul>
                                </div>
                            </div>						
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        Những câu hỏi đang được cập nhật
                    </div>
                </div>
            </div>
            <div id="comment" class="fb-comments" data-href="<?= product_href($product) ?>" data-numposts="5"
                 data-colorscheme="light"  data-width="100%"></div>
        </div>
        <div class="col-sm-3">
             <?php $this->load->view('widget/cat_products') ?>
             <?php $this->load->view('widget/hot_products') ?>
             <?php $this->load->view('widget/new_products') ?>
            <?php $this->load->view('widget/event_posts') ?>
        </div>
    </div>
</div>
