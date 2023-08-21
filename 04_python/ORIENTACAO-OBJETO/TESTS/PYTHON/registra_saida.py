def cria_entrega(numero, destinatario, endereco, peso):
    entrega = {"numero": numero, "destinatario": destinatario, "endereco": endereco, "peso": peso}
    return entrega

def registra_saida(entrega):
    entrega["status"] = "Saiu para entrega"

def registra_entrega(entrega):
    entrega["status"] = "Entregue"

def consulta_status(entrega):
    print("Status da entrega: {}".format(entrega["status"]))
