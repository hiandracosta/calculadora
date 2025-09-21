from calculadora import soma, subtrai, multiplica, divide

def test_soma():
    assert soma(2, 3) == 5
    assert soma(-1, 1) == 0
    assert soma(0, 0) == 0

def test_subtracao():
    assert subtrai(5, 3) == 2
    assert subtrai(-1, -1) == 0

def test_multiplicacao():
    assert multiplica(3, 4) == 12
    assert multiplica(-2, 3) == -6

def test_divisao():
    assert divide(10, 2) == 5
    assert divide(7, 2) == 3.5
    assert divide(5, 0) == "Erro: divisão por zero"

def test_calculadora_interativa():
    """Teste básico das funções principais"""
    # Simular escolhas do usuário
    assert soma(10, 5) == 15
    assert subtrai(10, 5) == 5
    assert multiplica(10, 5) == 50
    assert divide(10, 5) == 2.0
    
    print("Todas as operacoes funcionando!")

if __name__ == "__main__":
    test_calculadora_interativa()