package br.usjt.arqdesis.sistemaPredial.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.usjt.arqdesis.sistemaPredial.model.Conjunto;
import br.usjt.arqdesis.sistemaPredial.model.Empresa;
import br.usjt.arqdesis.sistemaPredial.service.ConjuntoService;
import br.usjt.arqdesis.sistemaPredial.service.EmpresaService;

public class CriarEmpresa implements Command {
	
	
		@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			Empresa empresa = new Empresa();
			
			String rs = request.getParameter("razaoSocial");
			String nf = request.getParameter("nomeFantasia");
			String cnpj = request.getParameter("cnpj");
			int temperatura = Integer.parseInt(request.getParameter("temperatura"));
			String horarioInicio = request.getParameter("horaInicio") + ":" + request.getParameter("minutoInicio");
			String horarioFim = request.getParameter("horaFim") + ":" + request.getParameter("minutoFim");
			String horLigarAC = request.getParameter("horLigarAC") + ":" + request.getParameter("minLigarAC");
			String horDesligarAC = request.getParameter("horDesligarAC") + ":" + request.getParameter("minDesligarAC");
			String pConjuntos[] = request.getParameterValues("conjuntos");
			List<Conjunto> conjuntos = new ArrayList<Conjunto>();
			Conjunto conj;
			empresa.setRazaoSocial(rs);
			empresa.setNomeFantasia(nf);
			empresa.setCnpj(cnpj);
			empresa.setTemperatura(temperatura);
			empresa.setHorarioInicio(horarioInicio);
			empresa.setHorarioFim(horarioFim);
			empresa.setHorLigarAC(horLigarAC);
			empresa.setHorDesligarAC(horDesligarAC);
			
			EmpresaService es = new EmpresaService();
			int idEmpresa = es.criar(empresa);
			
			if(pConjuntos != null && pConjuntos.length != 0) {
				ConjuntoService cs = new ConjuntoService();
				conj = new Conjunto();
				for(int i = 0; i < pConjuntos.length; i++) {
					conj.setNumeroConjunto(Integer.parseInt(pConjuntos[i]));
					conj.setIdEmpresa(idEmpresa);
					conj.setStatus(true);
					conjuntos.add(conj);
					cs.criar(conj);
				}
				empresa.setConjuntos(conjuntos);
			}
			
			List<Empresa> lista = new ArrayList<Empresa>();
			
			lista = es.carregarTodasEmpresas();
			
			
			
			RequestDispatcher view = null;
			HttpSession session = request.getSession();
			
			session.setAttribute("lista", lista);
			view = request.getRequestDispatcher("ListarEmpresas.jsp");
			
			view.forward(request, response);
			
	}
}
