rm -rf rethg
reth init --datadir rethg --chain genesis.json
reth node --datadir rethg --dev --chain genesis.json --http &
sleep 1
echo `cast block 0 | grep stateRoot`
cast send --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 0x15d34AAf54267DB7D7c367839AAf71A00a2C6A65 --value 255
echo `cast block 1 | grep stateRoot`
killall reth
