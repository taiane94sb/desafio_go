# FullCycle - Docker: Desafio Go

Publicar uma imagem no docker hub que ao exercutar o comando docker run <seu-user>/fullcycle, apareça a mensagem: Full Cycle Rocks!!

## Instalação

Clonando o projeto, através do terminal, acessa a parta, onde estão localizados os aquivos e faça o build da imagem.

```bash
docker build -t taiane94sb/full-cycle-rocks-docker-go . -f Dockerfile
```

Depois disso, rode o container com a imagem que acabou de ser criada.

```bash
docker run --name fullcycle-go -v $(pwd):/src taiane94sb/full-cycle-rocks-docker-go:latest
```
A mensagem Full Cycle Rocks!! deve aparecer em seu terminal.