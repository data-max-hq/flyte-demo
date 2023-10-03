# from datetime import datetime
#
# from flytekit import CronSchedule, LaunchPlan, task, workflow  # noqa: E402
#
#
# @task
# def format_date(run_date: datetime) -> str:
#     return run_date.strftime("%Y-%m-%d %H:%M")
#
#
# @workflow
# def date_formatter_wf(kickoff_time: datetime):
#     formatted_kickoff_time = format_date(run_date=kickoff_time)
#     print(formatted_kickoff_time)
#
#
# # creates a launch plan that runs every minute.
# cron_lp = LaunchPlan.get_or_create(
#     name="my_cron_scheduled_lp",
#     workflow=date_formatter_wf,
#     schedule=CronSchedule(
#         # Note that the ``kickoff_time_input_arg`` matches the workflow input we defined above: kickoff_time
#         # But in case you are using the AWS scheme of schedules
#         # and not using the native scheduler then switch over the schedule parameter with cron_expression
#         schedule="*/1 * * * *",  # Following schedule runs every min
#         kickoff_time_input_arg="kickoff_time",
#     ),
# )