import React from 'react'
import logo from "../../LogoBody.png";

import "./BoasVindas.css";

function BoasVindas({ setPaginaAtual }) {
    return (
        <div id="boas-vindas">
          <img src={logo} alt="Iniciar" />
          <div id='infos'>
          <h2>Seja bem-vindo</h2>
          <p>Descubra qual área da TI combina mais com você! Clique no botão abaixo para começar.</p>
          <button onClick={() => setPaginaAtual("Perguntas")}>Iniciar</button>
          </div>
        </div>
      );
}

export default BoasVindas