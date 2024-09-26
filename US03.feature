Feature: US03 Gestión de datos del técnico
  Como técnico, quiero tener una opción para gestionar mi información personal, experiencia, tarifa y habilidades.

  Scenario: Colocar información de contacto
    Given el <técnico> ha iniciado sesión en la aplicación
    When ingresa a la sección de "Datos personales"
    And coloca su <información de contacto>
    Then la aplicación muestra la información actualizada

  Examples:
    | técnico  | información de contacto   |
    | Técnico1 | tecnico1@correo.com       |
    | Técnico2 | tecnico2@correo.com       |

  Scenario: Actualizar información de trabajo
    Given el <técnico> ha ingresado a la sección de "Datos personales"
    When coloca su <experiencia>, <habilidades> y <tarifa>
    Then la aplicación muestra la información actualizada

  Examples:
    | técnico  | experiencia     | habilidades      | tarifa |
    | Técnico1 | 5 años          | Electricista     | $20/h  |
    | Técnico2 | 3 años          | Plomero          | $15/h  |
