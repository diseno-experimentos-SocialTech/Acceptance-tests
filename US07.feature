
Feature: US07 Iniciar sesión en la aplicación
  Como cliente, quiero poder iniciar sesión en la aplicación para poder buscar un técnico que me ayude con mi inconveniente.

  Scenario: Iniciar sesión con usuario y contraseña
    Given el <cliente> ha accedido a la pantalla de inicio de sesión
    When ingresa su <usuario> y <contraseña>
    Then la aplicación verifica la cuenta y le permite acceder a la pantalla principal

  Examples:
    | cliente   | usuario      | contraseña  |
    | Cliente1  | cliente1@x.com | 123456      |
    | Cliente2  | cliente2@x.com | password    |