<?php

/**
 * Controlador para las acciones y vistas con el usuario
 */
class UserController extends AppController
{

    public function index()
    {
        Redirect::toAction('page');
    }
    
    public function page(int $page = 1)//validación 'int' con php7
    {        
        $this->page = (new User)->paginate("page: $page", 'per_page: 7');
    }

    public function create()
    {
        //se verifica si se ha enviado via POST los datos
        if (Input::hasPost('user')) {
            $obj = new User;
            //Intenta guardar el usuario junto con la foto
            if ($obj->saveWithPhoto(Input::post('user'))) {
                //Mensaje de éxito y retorna al listado
                Flash::valid('Usuario creado');
                return Redirect::to();
            }
            //Si falla se hacen persistentes los datos en el formulario
            $this->data = Input::post('user');
            return;
        }
    }

    public function edit(int $id)//validación 'int' con php7
    {
        //Carga los datos del usuario
        $this->user = (new User)->find($id);
        //se verifica si se ha enviado via POST los datos
        if (Input::hasPost('user')) {
            //Intenta guardar los cambios
            if ($this->user->update(Input::post('user'))) {
                //Mensaje de éxito y retorna al listado
                Flash::valid('Usuario actualizado');
                return Redirect::to();
            }
            //Si falla se hacen persistentes los datos en el formulario
            $this->user = Input::post('user');
            return;
        }
    }

    public function update_photo(int $id)//validación 'int' con php7
    {
        //Carga los datos del usuario
        $this->user = (new User)->find($id);
        //se verifica si se ha enviado via POST los datos
        if (Input::hasPost('user')) {
            //Si falla al intentar actualizar
            if ($this->user->updatePhoto()) {
                //Mensaje de éxito y retorna al listado
                Flash::valid('Foto de usuario actualizada');
                return Redirect::to();
            }
            //se hacen persistentes los datos en el formulario
            $this->user = Input::post('user');
            return;
        }
    }
}
