Feature: US09 Publicar solicitud de reparación en línea
  Como usuario, quiero poder publicar una solicitud de reparación en línea para encontrar rápidamente un técnico 
  calificado que pueda solucionar el problema en mi hogar.

  Scenario: Acceso a la sección de solicitud de reparación
    Given el <usuario> necesita solicitar una reparación en su hogar
    When inicia sesión en la aplicación ServiFix
    Then selecciona la opción "Publicar solicitud de reparación"
    And se le presenta un formulario para describir el problema y establecer un precio base

  Examples:
    | usuario   |
    | Usuario1  |
    | Usuario2  |
