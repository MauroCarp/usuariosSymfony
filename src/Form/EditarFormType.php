<?php

namespace App\Form;

use App\Entity\Usuarios;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use \Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EditarFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nombre',TextType::class,['label'=>'Nombre'])
            ->add('apellidos',TextType::class,['label'=>'Apellidos'])
            ->add('fecha_nacimiento',DateType::class,['label'=>'Fecha de Nacimiento','widget' => 'single_text'])
            ->add('sexo',ChoiceType::class,['label'=>'Sexo',
                'choices'=>[
                    'Masculino'=>'M',
                    'Femenino'=>'F'
                ]
            ])
            ->add('Modificar',SubmitType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Usuarios::class,
        ]);
    }
}
