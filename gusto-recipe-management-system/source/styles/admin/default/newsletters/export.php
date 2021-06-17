<meta charset="utf-8">
<table class="table table-bordered table-striped" id="datatable_">
    <thead>
        <tr>
            <th> Email</th>
        </tr>
    </thead>

    <tbody class="middle-align">
        <?php foreach ($items as $item): ?>
            <tr>
                <td><?php echo $item->email ?></td>
            </tr>
        <?php endforeach ?>
    </tbody>
</table>
