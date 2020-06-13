package br.com.model;

import br.com.annotations.Auth;
import br.com.annotations.Public;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dao.StudentDAO;
import br.com.model.Student;
import java.util.List;
import javax.inject.Inject;

@Auth
@Controller
@Path("estudante")
public class StudentController {

    @Inject
    private Result result;

    @Inject
    private StudentDAO studentDAO;

    @Get("novo")
    public void newStudent() {

    }

    @Post("novo")
    public void newStudent(Student student) {
        studentDAO.save(student);
        result.redirectTo(this).listStudent();
    }

    @Post("atualizar")
    public void editStudent(Student student) {
        studentDAO.update(student);
        result.redirectTo(this).listStudent();
    }

    @Get("editar/{id}")
    public void editStudent(Integer id) {
        Student student = studentDAO.findById(id);
        result.include("student", student);
    }

    @Get("remover/{id}")
    public void removeStudent(Integer id) {

        Student student = studentDAO.findById(id);
        result.include("student", student);
        studentDAO.remove(id);
        result.redirectTo(this).listStudent();
    }

    @Get("lista")
    public void listStudent() {
        List<Student> student = studentDAO.findAll();
        for (Student student1 : student) {
            System.out.println(student1.getName());
        }
        result.include("it", student);
    }

    @Public
    @Post("busca")
    public void simpleSearch(String studentName) {

        List<Student> student = (List<Student>) studentDAO.findByName(studentName);
        result.include("it", student);
        result.of(this).listStudent();

    }

}
