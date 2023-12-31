
from pathlib import Path

from pylogics.parsers import parse_ltl

from ltlf_goal_oriented_service_composition.rewrite_formula import rewrite
from ltlf_goal_oriented_service_composition.services import Service
from ltlf_goal_oriented_service_composition.to_pddl import services_to_pddl, _START_SYMB

# all the atomic actions for the task
BUILD_STATOR = "build_stator"
BUILD_ROTOR = "build_rotor"
BUILD_INVERTER = "build_inverter"
ASSEMBLE_MOTOR = "assemble_motor"

ALL_SYMBOLS = {
    BUILD_STATOR,
    BUILD_ROTOR,
    BUILD_INVERTER,
    ASSEMBLE_MOTOR,
}


def one_state_service(service_name: str, action: str) -> Service:
    return Service(
        {f"{service_name}_0"},
        {action},
        {f"{service_name}_0"},
        f"{service_name}_0",
        {
            f"{service_name}_0": {
                action: {f"{service_name}_0"},
            },
        },
    )


def build_goal():
    formula_str = f"(!{ASSEMBLE_MOTOR} U {BUILD_STATOR})"
    formula_str += f" & (!{ASSEMBLE_MOTOR} U {BUILD_ROTOR})"
    formula_str += f" & (!{ASSEMBLE_MOTOR} U {BUILD_INVERTER})"
    formula_str += f" & F({ASSEMBLE_MOTOR})"

    return formula_str


if __name__ == "__main__":
    formula_str = build_goal()
    formula_str = f"{_START_SYMB} & X[!]({formula_str})"
    print(formula_str)
    formula = parse_ltl(formula_str)
    formula_pddl = rewrite(formula)

    rotor_builder = one_state_service("rotor_builder", BUILD_ROTOR)
    stator_builder = one_state_service("stator_builder", BUILD_STATOR)
    inverter_builder = one_state_service("inverter_builder", BUILD_INVERTER)
    motor_assembler = one_state_service("motor_assembler", ASSEMBLE_MOTOR)

    all_services = [
        rotor_builder,
        stator_builder,
        inverter_builder,
        motor_assembler,
    ]
    domain, problem = services_to_pddl(all_services, formula_pddl)

    Path("domain.pddl").write_text(domain)
    Path("problem.pddl").write_text(problem)
