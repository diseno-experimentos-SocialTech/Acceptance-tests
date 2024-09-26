Feature: US04 Ofrecer servicio en publicaciones
  Como técnico, quiero poder ofrecer mi servicio a publicaciones para obtener un trabajo cerrado.

  Scenario: Ofrecer servicio
    Given el <técnico> ha iniciado sesión en la aplicación
    When accede a una publicación de trabajo
    And presiona "Ofrecer servicio"
    Then la aplicación le permite ajustar las características del servicio a ofrecer

  Scenario: Aceptación del servicio
    Given el <técnico> ha ofrecido su servicio
    When un cliente acepta el servicio
    Then la aplicación muestra toda la información del trabajo solicitado por el cliente

  Scenario: Rechazo del servicio
    Given el <técnico> ha ofrecido su servicio
    When un cliente rechaza el servicio
    Then la aplicación muestra el rechazo y sugiere otras publicaciones
