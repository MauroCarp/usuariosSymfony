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


}