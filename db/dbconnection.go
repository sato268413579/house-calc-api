package db

import (
	"database/sql"
	"log"

  _ "github.com/go-sql-driver/mysql"
)

func ConnectOnly() *sql.DB {
	// データベースのハンドルを取得する
	db, err := sql.Open("mysql", "gouser:password@tcp(localhost:3306)/housecalc")
//   fmt.Printf("%T\n", db)
	if err != nil {
		// ここではエラーを返さない
		log.Fatal(err)
	}
	// defer db.Close()

	// 実際に接続する
	err = db.Ping()
	if err != nil {
		log.Fatal(err)
	} else {
		log.Println("データベース接続完了")
	}
  return db
}