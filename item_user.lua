while true do
    turtle.select(1)
    hoe = turtle.getItemCount()
    if hoe == 0 then
        break
        end
    turtle.place()
    sleep(10)
    end
