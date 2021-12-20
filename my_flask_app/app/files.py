#!/usr/bin/python3

import os.path
from flask import Blueprint, render_template, request, redirect, url_for, flash
from flask_login import login_required
from flask_autoindex import AutoIndex

files = Blueprint('files', __name__)

files_index = AutoIndex(files, os.path.curdir + '/ffflask/files', add_url_rules=False)
@files.route('/files')
def autoindex(path='.'):
    return files_index.render_autoindex(path)

@files.route('/download')
@login_required
def download():
    return redirect(url_for('files.autoindex'))