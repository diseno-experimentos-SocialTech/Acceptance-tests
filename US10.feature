Feature: US10 Notificaciones instantáneas de ofertas de técnicos en solicitudes de reparación
  Como usuario, quiero recibir notificaciones instantáneas cuando un técnico haga una oferta en mi solicitud de reparación, para poder revisarlas y tomar una decisión rápidamente.

  Scenario: Notificación de oferta de técnico
    Given el <usuario> ha publicado una solicitud de reparación
    When un técnico interesado hace una oferta en la solicitud
    Then el <usuario> recibe una notificación instantánea en su dispositivo móvil
    And la notificación muestra información sobre la oferta, como el precio propuesto y el perfil del técnico

  Examples:
    | usuario   | técnico   | precio_propuesto |
    | Usuario1  | Técnico1  | S/100            |
    | Usuario2  | Técnico2  | S/150            |

  Scenario: Revisión y selección de la oferta
    Given el <usuario> ha recibido notificaciones de ofertas de técnicos
    When accede a la aplicación ServiFix
    And revisa las ofertas disponibles para su solicitud de reparación
    Then puede ver los detalles de cada oferta y compararlas entre sí
    And finalmente selecciona al técnico adecuado y acepta su oferta para comenzar la reparación

  Examples:
    | usuario   | oferta_seleccionada |
    | Usuario1  | Técnico1            |
    | Usuario2  | Técnico2            |
