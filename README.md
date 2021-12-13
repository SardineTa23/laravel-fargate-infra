# fargateでlaravelデプロイ

## ECS Exec
` aws ecs execute-command \
--cluster example-prod-foobar \
--container タスク名 \
--interactive \
--command "/bin/bash" \
--task タスクID
`
