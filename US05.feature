Feature: US05 Filtrar y ordenar lista de trabajadores
  Como cliente, quiero poder ordenar y filtrar la lista de trabajadores según mis preferencias antes de solicitar un servicio para tener una experiencia más personalizada.

  Scenario: Visualizar lista de trabajadores
    Given el <cliente> ha iniciado sesión en la aplicación
    When accede a la sección de búsqueda de trabajadores
    Then la aplicación muestra una lista de <trabajadores>

  Scenario: Filtrar trabajadores por tipo de servicio
    Given el <cliente> visualiza la lista de trabajadores
    When selecciona la opción de "Filtrar"
    And selecciona el <tipo de servicio>
    Then la aplicación muestra solo los trabajadores que brinden ese servicio

  Examples:
    | cliente  | tipo de servicio   |
    | Cliente1 | Electricista       |
    | Cliente2 | Plomero            |

  Scenario: Ordenar trabajadores por calificación
    Given el <cliente> visualiza la lista de trabajadores
    When selecciona la opción de "Ordenar por"
    And selecciona "Calificación"
    Then la aplicación muestra los trabajadores ordenados por calificación, del más alto al más bajo
