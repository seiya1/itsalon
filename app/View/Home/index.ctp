<h1>ニュース</h1>
<dl>
    <?php foreach ($news as $n): ?>
    <dt><?php echo $this->Html->link($n['News']['title'], '/news/view/' . $n['News']['id']); ?></dt>
    <dd><?php echo $n['News']['content']; ?></dd>
    <?php endforeach; ?>
</dl>
