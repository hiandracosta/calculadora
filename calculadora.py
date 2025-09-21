# arquivo: calculadora.py

def soma(a, b):
    return a + b


def subtrai(a, b):
    return a - b


def multiplica(a, b):
    return a * b


def divide(a, b):
    if b != 0:
        return a / b
    else:
        return "Erro: divisão por zero"


def main():
    print("=== Calculadora Simples ===")
    print("Escolha a operação:")
    print("1 - Soma")
    print("2 - Subtração")
    print("3 - Multiplicação")
    print("4 - Divisão")

    opcao = input("Digite o número da operação: ")
    x = float(input("Digite o primeiro número: "))
    y = float(input("Digite o segundo número: "))

    if opcao == "1":
        resultado = soma(x, y)
    elif opcao == "2":
        resultado = subtrai(x, y)
    elif opcao == "3":
        resultado = multiplica(x, y)
    elif opcao == "4":
        resultado = divide(x, y)
    else:
        resultado = "Opção inválida"

    print(f"Resultado: {resultado}")


if __name__ == "__main__":
    main()
