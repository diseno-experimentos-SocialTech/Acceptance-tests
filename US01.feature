Feature: US01 Visualización de la dirección exacta del trabajo
  Como técnico, quiero poder ver la dirección exacta de donde se hará el trabajo para poder ubicarme mejor.

  Scenario: Visualización de la dirección exacta
    Given el <técnico> ha iniciado sesión en la aplicación
    When selecciona el botón "Ver ubicación"
    Then la aplicación muestra la <dirección exacta> del lugar donde se realizará el trabajo

  Examples:
    | técnico  | dirección exacta           |
    | Técnico1 | Calle Falsa 123, Lima      |
    | Técnico2 | Av. Siempre Viva 742, Lima |

  Scenario: Confirmación de la dirección
    Given el <técnico> ha visualizado la dirección en la aplicación
    When compara la dirección mostrada con la proporcionada por el cliente
    Then la dirección en la aplicación coincide con la proporcionada por el cliente

  Examples:
    | técnico  | dirección proporcionada     |
    | Técnico1 | Calle Falsa 123, Lima       |
    | Técnico2 | Av. Siempre Viva 742, Lima  |
