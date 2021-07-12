# MkDocs利用方法
## インストール
```
#RHELの場合
pip3 install mkdocs
```

## プロジェクト作成
```
python3 -m mkdocs new my-project
```

## mkdocs.yml
プロジェクト作成時に作られた mkdocs.ymlを編集
```
site_name: My Docs
nav:
    - Home: index.md
dev_addr: 0.0.0.0:8000
theme:
  name: 'material'
```

## コンテナ起動
mkdocs公式に従い起動しようとするとmkdocs.ymlがマウント出来ず起動出来ない。
そのため以下の--security-opt label=disableオプションを付けコマンドを実行。
```
# developerモードで起動
podman run --security-opt label=disable --rm -itd -p 8000:8000 -v ${PWD}:/docs squidfunk/mkdocs-material
```

