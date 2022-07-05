# 0. Hello Ethernaut Walkthrough

This level is a gentle introduction to how to play the game, you can pretty much just follow the on screen instructions for this one.

-[] Set up MetaMask wallet, and install the appropriate brower extension, set the network to Rinkerby and obtain some ethereum from a Rinkerby faucet.
-[] Open the browser console right-click > inspect > console in Firefox
-[] type 'player' and hit enter to view your wallet address.
-[] type 'await getBalance(player)' to view your ethereum balance
-[] type help() to view other commands you can use
-[] type 'ethernaut' to view the TruffleContract object that wraps the challenge contract. This allows you to interact with the challenge contract.
-[] type 'await ethernaut.owner()' to view the contract owner address. You can call other contract functions in a similar way.
-[] click 'get new instance', you need to submit this instance to complete the level after you've solved the challenge. Approve the transaction on meta mask to create your new instance, this will cost some ethereum as it's deploying a new contract for you.
-[] back in the console view the contracts info function: 'await contract.info()'
-[] It's recommended to solve this challenge yourself to understand how the game works, but just incase you get stuck there's spoilers below.


-[] 'await contract.info1()'
-[] 'await contract.info2('hello)'
-[] 'await contract.infoNum()' and expand the object returned to view the value of the next info method (42).
-[] 'await contract.info42()'
-[] 'await contract.theMethodName()'
-[] 'await contract.method7123949()'
-[] 'await contract.password()' to obtain the password (ethernaut0)
-[] 'await contract.autheticate('ethernaut0')' and confirm the transaction to submit the password to your deployed instance contract
-[] 'contract' and expand the object to view available functions. Notice the functions we called above were visible here all along. There are some additional function including getCleared(). If you had called this function initially it would have returned false, but now that we have authenticated it should return true.
-[] 'await contract.getCleared()' to confirm the authenticate call was successful and the value has been set to true. 
-[] Click 'Submit instance' and confirm the transaction
-[] Level complete!