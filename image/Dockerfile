FROM danielflook/terraform-github-actions-base:latest

COPY entrypoints/ /entrypoints/
COPY actions.sh /usr/local/actions.sh

COPY tools/convert_validate_report.py /usr/local/bin/convert_validate_report
COPY tools/github_pr_comment.py /usr/local/bin/github_pr_comment
COPY tools/latest_terraform_version.py /usr/local/bin/latest_terraform_version
COPY tools/convert_output.py /usr/local/bin/convert_output
COPY tools/plan_cmp.py /usr/local/bin/plan_cmp
COPY tools/convert_version.py /usr/local/bin/convert_version
COPY tools/workspace_exists.py /usr/local/bin/workspace_exists

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install\
  && pip3 install ec2instanceconnectcli

LABEL org.opencontainers.image.title="GitHub actions for terraform"
