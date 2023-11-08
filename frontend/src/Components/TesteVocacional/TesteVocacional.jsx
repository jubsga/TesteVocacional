import { useEffect, useState } from "react";
import BoasVindas from "../BoasVindas/BoasVindas";
import Perguntas from "../Perguntas/Perguntas";
import Resultado from "../Resultado/Resultado";

import "./TesteVocacional.css";
import logo from "../../LogoBody.png";

const FluxoDeTelas = ["Boas-vindas", "Perguntas", "Resultado"];

function TesteVocacional() {
  const [paginaAtual, setPaginaAtual] = useState("Boas-vindas");
  const [respostasSelecionadas, setRespostasSelecionadas] = useState([]);
  const [perguntasDoBancoDeDados, setPerguntasDoBancoDeDados] = useState([]);

  useEffect(() => {
    fetch("https://localhost:44304/api/perguntas", {
      method: "GET",
    })
      .then((response) => response.json())
      .then((json) => {
        setPerguntasDoBancoDeDados(json);
      })
      .catch((error) => {
        console.log(error);
        alert("Erro ao buscar perguntas");
      });
  }, []);

  return (
    <div id="main">
      <div id="head"><br /><br />
      <img src={logo} alt="Logo" />
      </div>
      {paginaAtual === FluxoDeTelas[0] && (
        <BoasVindas setPaginaAtual={setPaginaAtual} />
      )}
      {paginaAtual === FluxoDeTelas[1] && (
        <Perguntas
          perguntasDoBancoDeDados={perguntasDoBancoDeDados}
          setPaginaAtual={setPaginaAtual}
          respostasSelecionadas={respostasSelecionadas}
          setRespostasSelecionadas={setRespostasSelecionadas}
        />
      )}
      {paginaAtual === FluxoDeTelas[2] && (
        <Resultado
          setPaginaAtual={setPaginaAtual}
          setRespostasSelecionadas = {setRespostasSelecionadas}
          respostasSelecionadas={respostasSelecionadas}
        />
      )}
    </div>
  );
}

export default TesteVocacional;
