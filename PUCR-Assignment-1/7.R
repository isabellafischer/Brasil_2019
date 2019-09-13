#Isabella Fischer


total_worms = 341
worms_in_box = 26

total_boxes = ceiling(total_worms/worms_in_box)
print(total_boxes)
worms_last_box = (total_worms %% worms_in_box)
print(worms_last_box)
