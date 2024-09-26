Feature: US02 Gestión de horas disponibles
  Como técnico, quiero tener una opción para visualizar y seleccionar las horas disponibles para organizar mi horario.

  Scenario: Visualización de las horas disponibles
    Given el <técnico> ha iniciado sesión en la aplicación
    When selecciona la opción de "Ver horas disponibles"
    Then la aplicación muestra las <horas disponibles> para trabajar

  Examples:
    | técnico  | horas disponibles          |
    | Técnico1 | 09:00 - 13:00, 14:00 - 18:00 |
    | Técnico2 | 10:00 - 12:00, 15:00 - 19:00 |

  Scenario: Selección de horas disponibles
    Given el <técnico> visualiza las horas disponibles
    When selecciona una <hora disponible>
    Then la aplicación actualiza el horario y marca la franja como ocupada

  Examples:
    | técnico  | hora disponible          |
    | Técnico1 | 09:00 - 13:00            |
    | Técnico2 | 15:00 - 19:00            |
