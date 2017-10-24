class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :update, :destroy]

    # GET /employees
    def index
        @employees = Employee.all

        render json: @employees
    end

    # GET /employees/1
    def show
        render json: @employee
    end

    # POST /employees
    def create
        @employee = Employee.new(employee_params)
        if @employee.supervisor_status == nil
            @employee.supervisor_status = false
        end

        if @employee.supervisor_status
            if check_supervisor(@employee)
                if @employee.save
                    render json: @employee, status: :created, location: @employee
                else
                    render json: @employee.errors, status: :unprocessable_entity
                end
            end
        else
            if @employee.save
                    render json: @employee, status: :created, location: @employee
            else
                render json: @employee.errors, status: :unprocessable_entity
            end
        end
    end

    # PATCH/PUT /employees/1
    def update
        if @employee.update(employee_params)
            render json: @employee
        else
            render json: @employee.errors, status: :unprocessable_entity
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
        @employee = Employee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
        params.permit(:first_name, :last_name, :department_id, :supervisor_status)
    end

    # check to see if a department already has a supervisor
    def check_supervisor(employee)
        employees_of_same_dep = Employee.where(department_id: employee.department_id)

        if employees_of_same_dep.exists?(supervisor_status: true)
            false
        else
            true
        end
    end
end
