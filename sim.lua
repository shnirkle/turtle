function is_inventory_full()
    for i = 1, 16, 1 do
        print(("Slot %d: Amount: %d"):format(i,turtle.getItemCount))
    end
end