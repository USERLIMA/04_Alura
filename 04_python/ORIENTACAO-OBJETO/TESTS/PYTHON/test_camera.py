def cria_camera(nome, endereco_ip, senha):
    camera = {"nome":nome, "endereco_ip":endereco_ip, "senha":senha}
    return camera

def valida_acesso(camera, senha):
    return camera["senha"] == senha

def acessa_camera(camera):
    # Código para se conectar à câmera usando o endereço IP
    # Código para obter a imagem da câmera    
    # Retorna a imagem obtida