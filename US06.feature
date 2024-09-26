Feature: US06 Agregar calificación
  Como cliente, quiero poder calificar a los trabajadores según el servicio brindado para ayudar a otros clientes a encontrar buenas referencias.

  Scenario: Solicitar una calificación después del servicio
    Given el <cliente> ha finalizado el servicio
    When ingresa a la aplicación
    Then la aplicación muestra un pop-up solicitando la calificación y comentarios del servicio

  Scenario: Enviar calificación y reseña
    Given el <cliente> visualiza el pop-up solicitando la calificación
    When selecciona una calificación de <estrellas>
    And ingresa una reseña en la caja de texto
    And hace clic en “Enviar”
    Then la plataforma agrega la calificación y la reseña al perfil del trabajador que realizó el servicio

  Scenario: No enviar calificación
    Given el <cliente> visualiza el pop-up solicitando la calificación
    When hace clic en el botón de cerrar
    Then el pop-up se cierra sin enviar ninguna calificación


    Examples:
      | cliente  | estrellas | reseña                              |
      | Cliente1 | 5         | "Excelente trabajo"                 |
      | Cliente2 | 4         | "Buen servicio, pero tardó un poco" |
