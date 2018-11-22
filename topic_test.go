package ethereum

import (
	"testing"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/crypto"
	"fmt"
)
func Test_empty_hash(t *testing.T) {
	fmt.Println("Empty Hash: ", crypto.Keccak256Hash(nil).Hex())
}

func Test_03(t *testing.T){
	// Map元素索引值 = Keccak256( 32字节的元素Key值 + 32字节的属性index )

	var key [32]byte    // 32字节的元素Key值
	var index [32]byte  // 32字节的属性index

	key[31] = 1
	index[31] = 1

	elementIndex := append(key[:], index[:]...)

	hash := common.BytesToHash(crypto.Keccak256(elementIndex))

	fmt.Println("elementIndex:", common.Bytes2Hex(elementIndex))
	fmt.Println("hash: ", hash.Hex())
}
