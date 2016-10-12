<?= success_message($message); ?>

<h2>List of users</h2>

<table class="hover stack">
    <thead>
        <tr>
            <th> Email </th>
            <th> Firstname </th>
            <th> Lastname </th>
            <th> Created </th>
            <th> Updated </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($users as $user): ?>
        <tr>
            <td><?= $user->email; ?></td>
            <td><?= $user->firstname; ?></td>
            <td><?= $user->lastname; ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($user->created)); ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($user->updated)); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>
