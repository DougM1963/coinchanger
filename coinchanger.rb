def get_change(cents_received)
    cents_received = cents_received.to_i
    $coins_returned = {}
    coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
coins.each do |coin, value|
    if cents_received >= 0
    $coins_returned[coin] = cents_received / value
    i = $coins_returned[coin] * value
    cents_received = cents_received - i
    end
    $coins_returned
        
end

end
