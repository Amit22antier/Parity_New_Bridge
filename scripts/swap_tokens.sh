SOURCE_HOST=millau-bridge-node
SOURCE_PORT=9945
TARGET_HOST=rialto-bridge-node
TARGET_PORT=9944

./target/debug/substrate-relay \
		swap-tokens \
		millau-to-rialto \
		--source-host localhost \
		--source-port $SOURCE_PORT \
		--source-signer //WithRialtoTokenSwap \
		--source-balance 100000 \
		--target-host localhost \
		--target-port $TARGET_PORT \
		--target-signer //WithMillauTokenSwap \
		--target-balance 200000 \
		--target-to-source-conversion-rate-override metric \
		--source-to-target-conversion-rate-override metric \
		lock-until-block \
		--blocks-before-expire 1

# ./target/debug/substrate-relay \
# 	 swap-tokens \
# 			millau-to-rialto \
# 	    	--source-host localhost \
# 			--source-port $SOURCE_PORT \
# 		  	--source-signer //WithRialtoTokenSwap \
# 			--source-balance 100000 \
# 			--target-host localhost \
# 		--target-port $TARGET_PORT \
#  		--target-signer //WithMillauTokenSwap \
#  		--target-balance 200000 \
# 			no-lock