data remove block ~ ~ ~ lock
$data modify block ~ ~ ~ Items set from storage market:store_content "$(UUID)".items_original
$data remove storage market:store_content "$(UUID)"
kill @s