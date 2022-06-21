<?php

namespace App\Controller;

use App\Form\EditarFormType;
use App\Form\UsuariosFormType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Usuarios;


class UsuariosController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */

    public function homepage(Request $request)
    {

        //FORMULARIO NUEVO USUARIO

        $usuario = new Usuarios();

        $formulario = $this->createForm(UsuariosFormType::class, $usuario);

        $formulario->handleRequest($request);

        if ($formulario->isSubmitted() && $formulario->isValid()) {

            $ent = $this->getDoctrine()->getManager();
            $usuario->setEstado(false);
            $ent->persist($usuario);

            $ent->flush();

            $this->addFlash('success','Usuario creado con exito!');

            return $this->redirectToRoute('home');

        }
        //FIN FORMULARIO NUEVO USUARIO


        //FORMULARIO EDITAR USUARIO
        $usuarioEdit = new Usuarios();

        $formularioEdit = $this->createForm(EditarFormType::class, $usuarioEdit);

        $formularioEdit->handleRequest($request);

        if ($formularioEdit->isSubmitted() && $formularioEdit->isValid()) {

            $ent = $this->getDoctrine()->getManager();
            $ent->persist($usuario);

            $ent->flush();

            return $this->redirectToRoute('home');

        }
        //FIN FORMULARIO EDITAR USUARIO

        //MOSTRAR USUARIOS
        $em = $this->getDoctrine()->getManager();
        $usuarios = $em->getRepository(Usuarios::class)->findAll();

        return $this->render('Usuarios/tablaUsuarios.html.twig', [
            'newUserForm' => $formulario->createView(),
            'editUserForm' => $formularioEdit->createView(),
            'usuarios' => $usuarios

        ]);

    }

    /**
     * @Route("/EliminarUsuario/{id}", name="eliminarUsuario")
     */

    public function delete($id)
    {

        $em = $this->getDoctrine()->getManager();
        $usuario = $em->getRepository(Usuarios::class)->find($id);

        if (!$usuario) {
            throw $this->createNotFoundException('El usuario no existe');
        }

        $em->remove($usuario);
        $em->flush();
        $this->addFlash('success','Usuario Eliminado con exito!');

        return $this->redirectToRoute('home');

    }

    /**
     * @Route("/DarAltaBaja/{id}", name="darAltaBaja/{id}")
     */

    public function editarAltaBaja($id)
    {

        $em = $this->getDoctrine()->getManager();
        $usuario = $em->getRepository(Usuarios::class)->find($id);

        $estado = !$usuario->isEstado();


        $usuario->setEstado($estado);

        if (!$usuario) {
            throw $this->createNotFoundException('El usuario no existe');
        }

        $em->flush();

        return $this->redirectToRoute('home');

    }


    /**
     * @Route("/VerUsuario",name="verUsuario")
     */

    public function showData(Request $request)
    {
        if ($request->isXmlHttpRequest()) {

            $id = $request->request->get('id');

            $em = $this->getDoctrine()->getManager();
            $usuario = $em->getRepository(Usuarios::class)->find($id);

            return new JsonResponse($usuario);

        } else {

            throw new \Exception('Estás tratando de hackearme?');

        }
    }

}