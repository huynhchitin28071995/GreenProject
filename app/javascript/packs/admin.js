import '../stylesheets/admin'
import lozad from 'lozad'

document.addEventListener('turbolinks:load', function() {
    lozad().observe()
})