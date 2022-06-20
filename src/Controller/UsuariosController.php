<?php

namespace App\Controller;

use App\Form\UsuariosFormType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Usuarios;


class UsuariosController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */

    public function homepage(Request $request){

        $usuario = new Usuarios();

        $formulario = $this->createForm(UsuariosFormType::class,$usuario);

        $formulario->handleRequest($request);

        if($formulario->isSubmitted() && $formulario->isValid()){

            $ent = $this->getDoctrine()->getManager();
            $usuario->setEstado(false);
            $ent->persist($usuario);

            $ent->flush();

            return $this->redirectToRoute('home');

        }

        return $this->render('Usuarios/tablaUsuarios.html.twig',[
            'newUserForm'=>$formulario->createView()
        ]);

    }


    /**
     * @Route("/usuarios/tablaUsuarios", name="tablaUsuarios")
     */

    public function userList(){

        $em = $this->getDoctrine()->getManager();
        $usuarios = $em->getRepository(Usuarios::class)->findAll();

        if(count($usuarios) == 0){

            echo '{"data": []}';

            return;
        }

        $datosJson = '{
			"data": [';

        foreach ($usuarios as $key => $user) {

            $btns = "<div class='btn-group'><button class='btn btn-warning btnEditarUsuario' 
            idUsuario='".$user->getId()."' data-toggle='modal' data-target='#modalEditarUsuario' >
            <i class='fa fa-pencil'></i></button>
            <button class='btn btn-danger btnEliminarUsuario' idUsuario='".$user->getId()."'>
            <i class='fa fa-times'></i></button></div>";


            $sexo = ($user->getSexo() == 'M') ? 'Masculino' : 'Femenino';

            $estado = 'Baja';
            $color = 'danger';

            if($user->isEstado()){

                $estado = 'Alta';
                $color = 'success';

            }


            $label = "<span class='label label-$color btnEstado' idUsuario='".$user->getId()."' estadoUsuario='".$user->isEstado()."'>$estado</span>";

            $datosJson .='[
					"'.$user->getNombre().'",
					"'.$user->getApellidos().'",
					"2022-01-01",
					"'.$sexo.'",
					"'.$label.'",
					"'.$btns.'"],';

        }

        $datosJson = substr($datosJson, 0, -1);

        $datosJson .=   '] 

		 }';

        echo $datosJson;

    }

}