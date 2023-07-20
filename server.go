package main

import "local.packages/webapi"

import (

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
  _ "github.com/go-sql-driver/mysql"
)

func main() {
  // インスタンスを作成
  e := echo.New()

  // ミドルウェアを設定
  e.Use(middleware.Logger())
  e.Use(middleware.Recover())

  // ルートを設定
  e.GET("/", webapi.GetUser) // ローカル環境の場合、http://localhost:1323/ にGETアクセスされるとhelloハンドラーを実行する

  // サーバーをポート番号1323で起動
  e.Logger.Fatal(e.Start(":1323"))
}

