Feature: US08 Recuperar contraseña
  Como cliente, quiero recuperar mi contraseña en caso la haya olvidado para poder iniciar sesión y no perder los datos de mi cuenta.

  Scenario: Ingreso a la pestaña de recuperación de contraseña
    Given el <cliente> se encuentra en la pantalla de inicio
    When ingresa su <contraseña>
    And el sistema muestra el mensaje “Contraseña incorrecta”
    Then se redirecciona a la pestaña de verificación de identidad

  Scenario: Cambio de contraseña
    Given el <cliente> ha completado la verificación de identidad
    And ha sido redirigido al formulario para cambiar la contraseña
    When ingresa su <nueva contraseña>
    And hace clic en “Cambiar contraseña”
    Then el sistema redirecciona a la página principal
    And el cliente puede iniciar sesión con la nueva contraseña

  Examples:
    | cliente   | contraseña   | nueva contraseña |
    | Cliente1  | incorrect123 | nuevaClave123    |
    | Cliente2  | pass1234     | nuevaPass5678    |
