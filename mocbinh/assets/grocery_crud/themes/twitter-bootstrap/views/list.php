<?php if (!empty($list)) { ?>
    <div class="span12" >
        <table class="table table-bordered tablesorter table-striped">
            <thead>
                <tr>
                    <?php foreach ($columns as $column) { ?>
                        <th>
                <div class="text-left field-sorting <?php if (isset($order_by[0]) && $column->field_name == $order_by[0]) { ?><?php echo $order_by[1] ?><?php } ?>"
                     rel="<?php echo $column->field_name ?>">
                         <?php echo $column->display_as; ?>
                </div>
                </th>
            <?php } ?>
            <?php if (!$unset_delete || !$unset_edit || !$unset_read || !empty($actions)) { ?>
                <th class="no-sorter">
                    <?php echo $this->l('list_actions'); ?>
                </th>
            <?php } ?>
            </tr>
            </thead>
            <tbody>
                <?php foreach ($list as $num_row => $row) { ?>
                    <tr class="<?php echo ($num_row % 2 == 1) ? 'erow' : ''; ?>">
                        <?php foreach ($columns as $column) { ?>
                            <td class="<?php if (isset($order_by[0]) && $column->field_name == $order_by[0]) { ?>sorted<?php } ?>">
                                <div class="text-left"><?php echo ($row->{$column->field_name} != '') ? $row->{$column->field_name} : '&nbsp;'; ?></div>
                            </td>
                        <?php } ?>
                        <?php if (!$unset_delete || !$unset_edit || !empty($actions)) { ?>
                            <td align="left">
                                <div class="tools">
                                    <div class="btn-group">
                                        <?php if (!$unset_read) { ?>
                                            <a class="btn" href="<?php echo $row->read_url ?>" title="<?php echo $this->l('list_view') ?> <?php echo $subject ?>">
                                                <i class="icon-eye-open"></i>
                                            </a>
                                            <?php
                                        }
                                        ?>
                                        <?php if (!$unset_edit) {
                                            ?>
                                            <a class="btn" href="<?php echo $row->edit_url ?>" title="<?php echo $this->l('list_edit') ?> <?php echo $subject ?>">
                                                <i class="icon-pencil"></i>
                                            </a>
                                            <?php
                                        }
                                        if (!$unset_delete) {
                                            ?>
                                            <a class="btn delete-row" href="javascript:void(0);" data-target-url="<?php echo $row->delete_url ?>" title="<?php echo $this->l('list_delete') ?> <?php echo $subject ?>">
                                                <i class="icon-trash"></i>
                                            </a>
                                            <?php
                                        }
                                        ?>
                                        <?php if (!empty($row->action_urls)) : ?>
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <?php
                                                foreach ($row->action_urls as $action_unique_id => $action_url) {
                                                    $action = $actions[$action_unique_id];
                                                    ?>
                                                    <li>
                                                        <a href="<?php echo $action_url; ?>" class="<?php echo $action->css_class; ?> crud-action" title="<?php echo htmlentities($action->label) ?>"><?php if (!empty($action->image_url)) { ?>
                                                                <img src="<?php echo $action->image_url; ?>" alt="" />
                                                                <?php
                                                            }
                                                            echo ' ' . $action->label;
                                                            ?>
                                                        </a>
                                                    </li>
                                                    <?php
                                                }
                                                ?>
                                            </ul>
                                        <?php endif; ?>


                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </td>
                        <?php } ?>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
<?php } else { ?>
    <br/><?php echo $this->l('list_no_items'); ?><br/><br/>
    <?php
}?>