;;; init-exec-path.el --- Pulls environment variables from the user's shell
;;; Commentary:
;;; Code:

(require 'use-package)

(use-package exec-path-from-shell
  :config
  (dolist (var '("SSH_AUTH_SOCK"
                 "SSH_AGENT_PID"
                 "GPG_AGENT_INFO"
                 "LANG"
                 "LC_CTYPE"))
    (add-to-list 'exec-path-from-shell-variables var)))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-exec-path)
;; init-exec-path.el ends here
